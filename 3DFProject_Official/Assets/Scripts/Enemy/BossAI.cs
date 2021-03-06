using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;
using UnityEngine.AI;
using Debug = UnityEngine.Debug;

public enum BossStates { CHASE, STOP, WAIT }
[RequireComponent(typeof(NavMeshAgent))]
public class BossAI : MonoBehaviour, IEndGameObserver
{
    private NavMeshAgent agent;
    private Animator anim;
    private BossStates bossStates;
    
    [SerializeField] private float sightAngle;
    [SerializeField] private float attackRange;
    [SerializeField] private float attackTime;
    [SerializeField] private LayerMask layerMask;
    [SerializeField] private Transform firstSaveTrans;
    [SerializeField] private Transform secondSaveTrans;
    [SerializeField] private BossSound bossSound;
    [SerializeField] private AudioSource audio;
    
    private float attackTimer = 0;
    private bool isTargetPlayer = true;
    private bool canAttack = true;

    private bool isStop;
    private bool isChase = true;
    private bool isIdle = true;
    private bool isRoal;
    private bool isAttack;
    private bool isWait = true;
    private bool isFirstFound = true;
    private bool isLastChasing;

    private int saveState = 0;
    private Transform saveTrans;
    private Transform secondTrans;
    private GameObject targetObject;
    private int obstacleLevel;
    private bool canAttackObstacle;
    private bool weiHeOnce = true;
    private bool weiHeEnd;
    private int attackCounter = 0;
    private void OnEnable()
    {
        agent = GetComponent<NavMeshAgent>();
        anim = transform.GetChild(0).GetComponent<Animator>();
        saveTrans = firstSaveTrans;
        secondTrans = secondSaveTrans;
        GameManager.Instance.AddObserver(this);
        GameManager.Instance.AddCGObserver(this);
    }
    
    private void OnDisable()
    {
        GameManager.Instance.RemoveObserver(this);
        GameManager.Instance.RemoveCGObserver(this);
    }

    private void Update()
    {
        SwitchStates();
        SetAnimState();
    }

    void SwitchStates()
    {
        if (isStop)
            bossStates = BossStates.STOP;
        else if (isChase)
            bossStates = BossStates.CHASE;
        else if (isWait)
            bossStates = BossStates.WAIT;

        switch (bossStates)
        {
            case BossStates.STOP:
                agent.isStopped = true;
                isIdle = true;
                
                break;
            case BossStates.CHASE:
                isIdle = false;
                isLastChasing = true;
                if (isFirstFound)
                {
                    Music_Play.Instance.Chase();
                    GameManager.Instance.chasingNum++;
                    isFirstFound = false;
                    PlaySound(bossSound.bossRoar);
                }
                
                if (isTargetPlayer)
                {
                    Debug.Log(1);
                    if (Distance2Player() <= attackRange && BInSight())
                    {
                        agent.isStopped = true;
                        isIdle = true;
                        if (canAttack)
                        {
                            AnimAttack1();
                            StartCoroutine(RefreshCanAttack());
                        }
                    }
                    else
                    {
                        agent.destination = GameManager.Instance.player.transform.position;
                        agent.isStopped = false;
                        isIdle = false;
                    }
                }
                else
                {
                    Debug.Log(2);
                    if (canAttackObstacle)
                    {
                        agent.isStopped = true;
                        if (weiHeOnce)
                        {
                            StartCoroutine(WeiHe());
                        }

                        if (weiHeEnd && canAttack && attackCounter < obstacleLevel)
                        {
                            AnimAttack2();
                            StartCoroutine(RefreshCanAttack());
                            attackCounter++;
                            targetObject.transform.GetChild(0).GetComponent<Obstacle>().CheckHealth(attackCounter);
                            PlaySound(bossSound.GetRuinHit());
                        }
                    }
                    else
                    {
                        agent.isStopped = false;
                        agent.destination = targetObject.transform.position;
                        isIdle = false;
                    }
                }
                break;
            case BossStates.WAIT:
                Debug.Log(3);
                isFirstFound = true;
                if (isLastChasing)
                {
                    Music_Play.Instance.BackToNormal();
                    GameManager.Instance.chasingNum--;
                    isLastChasing = false;
                }
                isIdle = true;
                agent.isStopped = true;
                isIdle = true;
                if (BCanSee() && BInSight())
                {
                    isChase = true;
                }
                break;
        }
    }

    //????????????????????????
    void SetAnimState()
    {
        anim.SetBool("isIdle",isIdle); ;
    }
    
    IEnumerator WeiHe()
    {
        anim.SetTrigger("threat");
        weiHeOnce = false;
        yield return new WaitForSeconds(1f);
        weiHeEnd = true;
    }
    
    // void BreakObstacles()
    // {
    //     isIdle = true;
    //     agent.isStopped = true;
    //     switch (obstacleLevel)
    //     {
    //         case 1:
    //             StartCoroutine()
    //     }
    // }
    
    IEnumerator RefreshCanAttack()
    {
        canAttack = false;
        yield return new WaitForSeconds(attackTime);
        canAttack = true;
    }

    // IEnumerator TempTimer(float time)
    // {
    //     yield return new WaitForSeconds(time);
    //     Debug.Log("Attack Obstacle");
    // }
    
    float Distance2Player()
    {
        return Vector3.Distance(GameManager.Instance.player.transform.position, transform.position);
    }
    
    protected bool BCanSee()
    {
        var playerPos = GameManager.Instance.player.transform.position;
        var dirToPlayer = new Vector3(playerPos.x - transform.position.x,playerPos.y + 1f - transform.position.y, 
            playerPos.z - transform.position.z);
        Ray myRay = new Ray(transform.position, dirToPlayer);
        Physics.Raycast(myRay, out RaycastHit hitInfo,100f, layerMask, QueryTriggerInteraction.Ignore);
        Debug.Log(hitInfo.collider.name);
        if (hitInfo.collider.gameObject.GetComponent<PlayerAbilityControl>() != null && BInSight())
        {
            //Debug.Log(hitInfo.collider.name);
            return true;
        }
        else
        {
            //Debug.Log(hitInfo.collider.name);
            return false;
        }
    }
    bool BInSight()
    {
        float sight = 0.5f * sightAngle;
        if (Vector3.Dot(transform.forward,
                (GameManager.Instance.player.transform.position- transform.position).normalized) >=
            Mathf.Sin(sight * Mathf.Deg2Rad))
        {
            Debug.Log("InSight");
            return true;
        }
        else
        {
            Debug.Log("NotInSight");
            return false;
        }
    }

    public void Attack()
    {
        if (Distance2Player() <= 2f && BInSight())
        {
            PlayerHealth.Instance.GetHurt(EnemyManager.Instance.damageTime,gameObject);
            if (PlayerAbilityControl.Instance.WhetherTransforming())
                UIManager.Instance.DecreaseTime(EnemyManager.Instance.damageTime);
            else
            {
                isIdle = true;
                isStop = true;
            }
            Debug.Log("Attack!");
        }
    }
    
    public void SetTarget(GameObject targetObstacle, int attackNum, bool isWeiHe)
    {
        targetObject = targetObstacle;
        obstacleLevel = attackNum;
        weiHeOnce = isWeiHe;
        if (!isWeiHe)
        {
            weiHeEnd = true;
        }
        isTargetPlayer = false;
    }

    public void RefreshObstacleAttack()
    {
        weiHeOnce = true;
        SetCanAttackObstacle(false);
        weiHeEnd = false;
        isTargetPlayer = true;
        attackCounter = 0;
        agent.destination = GameManager.Instance.player.transform.position;
    }

    private void AnimAttack1()
    {
        Debug.Log("attack 01");
        anim.SetTrigger("attack1");
        PlaySound(bossSound.bossAttack);
    }
    
    private void AnimAttack2()
    {
        Debug.Log("attack 02");
        anim.SetTrigger("attack2");
    }
    public void SetCanAttackObstacle(bool flag)
    {
        canAttackObstacle = flag;
    }

    
    public void EndNotify()
    {
        isStop = false;
        if (saveState == 1)
        {
            Debug.Log("SaveState1");
            isChase = true;
        }
        else
            isChase = false;
        transform.position = saveTrans.position;
        transform.rotation = saveTrans.rotation;
    }

    public void CGTime()
    {
        isStop = true;
    }

    public void EndCG()
    {
        isStop = false;
    }

    public void WaitState()
    {
        isChase = false;
        
    }

    public void ChuJue()
    {
        anim.SetTrigger("chuJue");
        PlaySound(bossSound.bossAttack);
        Vector3 dir2Player = new Vector3(PlayerMovement.Instance.transform.position.x - transform.position.x, 0f,
            PlayerMovement.Instance.transform.position.z - transform.position.z).normalized;
        transform.forward = dir2Player;
    }

    public void SetIsStop()
    {
        isStop = true;
    }

    public void SetSecondSavePoint()
    {
        saveState++;
        if(saveState == 2)
            saveTrans = secondTrans;
        Debug.Log(saveTrans);
    }

    public void PlaySound(AudioClip clip)
    {
        audio.clip = clip;
        audio.Play();
    }
}
