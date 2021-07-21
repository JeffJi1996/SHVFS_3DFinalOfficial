using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public enum EnemyStates { CHASE, PATOL, STOP, STARE, DEAD }
public class PatolAI : EnemyController
{
    public List<Transform> patolPoints = new List<Transform>();
    private List<Vector3> patolVectors =new List<Vector3>();
    private EnemyStates enemyStates;
    private int pointNum;
    public float damageTime;
    private bool isWaiting;
    

    // Update is called once per frame

    protected override void Awake()
    {
        base.Awake();
        if (patolPoints.Count > 0)
        {
            for (var i = 0; i < patolPoints.Count; i++)
            {
                patolVectors.Add(patolPoints[i].position);
            }
            Destroy(patolPoints[0].parent.gameObject);
        }
        canAttack = true;
        isWaiting = false;
        Debug.Log(leftDown.position);
        Debug.Log(rightUp.position);

    }
    
    // Start is called before the first frame update
    protected override void Start()
    {
        base.Start();
        pointNum = 0;
        GoToNextPoint();
    }

    // Update is called once per frame
    void Update()
    {
        if (!isStop)
        {
            Vector3 playerTrans = GameManager.Instance.player == null
                ? new Vector3(22f, -4.449f, 41f)
                : GameManager.Instance.player.transform.position;

            dirToPlayer = (playerTrans + Vector3.up - transform.position).normalized;
            if (BCanSee() && Mathf.Acos(Vector3.Dot(transform.forward, dirToPlayer)) <= 1)
            {
                if (BPlayerInArea())
                {
                    Debug.Log("InArea");
                    isChase = true;
                    timer = 0;
                }
                else if (Vector3.Distance(playerTrans, transform.position) <=
                    alertDistance && BCanSee())
                {
                    isStare = true;
                    isChase = false;
                }
                else
                {
                    isChase = false;
                    isStare = false;
                }
            }
        }
 
        SwitchState();
        anim.SetBool("isIdle", isIdle);

    }

    void SwitchState()
    {
        if (isStop)
            enemyStates = EnemyStates.STOP;
        else if (isDead)
            enemyStates = EnemyStates.DEAD;
        else if (isChase)
            enemyStates = EnemyStates.CHASE;
        else if (isStare)
            enemyStates = EnemyStates.STARE;
        else if (isPatol)
            enemyStates = EnemyStates.PATOL;

        switch (enemyStates)
        {
            case EnemyStates.STOP:
                agent.isStopped = true;
                if (stopOnce)
                {
                    stopOnce = false;
                    GoToNextPoint();
                }
                break;
            case EnemyStates.DEAD:
                isDead = true;
                deadTime += Time.deltaTime;
                if(deadTime >= 2f)
                    Destroy(gameObject);
                break;
            case EnemyStates.CHASE:
                Debug.Log("Chase");
                agent.isStopped = false;
                agent.stoppingDistance = attackRange;
                agent.destination = GameManager.Instance.player.transform.position;
                if (Vector3.Distance(transform.position, GameManager.Instance.player.transform.position) <= attackRange)
                {
                    isIdle = true;
                    if (canAttack && !isWaiting)
                    {
                        AnimAttack();
                        AudioManager.instance.Play("Enemy_Attack_01");
                        StartCoroutine(RefreshCanAttack());
                    }
                }
                else
                {
                    isIdle = false;
                }

                // if (!BPlayerInArea())
                // {
                //     isWait = true;
                //     isChase = false;
                // }
                break;
            case EnemyStates.STARE:
                Debug.Log("Stare");
                isIdle = true;
                agent.isStopped = true;
                
                transform.forward = (GameManager.Instance.player.transform.position - transform.position).normalized;
                
                if (canAttack && Vector3.Distance(transform.position, GameManager.Instance.player.transform.position) <
                    attackRange)
                {
                    anim.SetTrigger("attack");
                    AudioManager.instance.Play("Enemy_Attack_01");
                    StartCoroutine(RefreshCanAttack());
                }
                
                if (Vector3.Distance(GameManager.Instance.player.transform.position, transform.position) >=
                    alertDistance || !BCanSee())
                {
                    GoToNextPoint();
                    isStare = false;
                }
                break;
            case EnemyStates.PATOL:
                Debug.Log("Patol");
                agent.stoppingDistance = 0;
                if (Vector3.Distance(transform.position, agent.destination) <= 0.7f && !isWaiting)
                {
                    agent.isStopped = true;
                    StartCoroutine(Wait());
                }
                //Debug.Log(Vector3.Distance(transform.position, agent.destination));
                break;
        }
    }

    public void GoToNextPoint()
    {
        agent.isStopped = false;
        agent.destination = new Vector3(patolVectors[pointNum].x, transform.position.y, patolVectors[pointNum].z);
        isIdle = false;
        pointNum++;
        if (pointNum == patolPoints.Count)
            pointNum = 0;
    }

    IEnumerator Wait()
    {
        isWaiting = true;
        isIdle = true;
        yield return new WaitForSeconds(waitTime);
        agent.isStopped = false;
        isWaiting = false;
        if (!isStop && !isChase)
        {
            GoToNextPoint();
        }
    }

    public void Attack()
    {
        PlayerHealth.Instance.GetHurt(EnemyManager.Instance.damageTime);
        if (PlayerAbilityControl.Instance.WhetherTransforming())
            UIManager.Instance.DecreaseTime(EnemyManager.Instance.damageTime);
        Debug.Log("Attack!");
    }
    
    public void Die()
    {
        isDead = true;
        anim.SetTrigger("die");
        AudioManager.instance.Play("Enemy_Death_04");
    }

}
