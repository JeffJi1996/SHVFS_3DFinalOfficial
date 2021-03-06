using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PatolAI : EnemyController
{
    public List<Transform> patolPoints = new List<Transform>();
    private List<Vector3> patolVectors =new List<Vector3>();
    private EnemyStates enemyStates;
    private int pointNum;
    
    public float damageTime;
    private bool isWaiting;
    private bool isAlert;
    [SerializeField] private Collider attackColli;
    [SerializeField] private bool isPatolAI;
    private bool isLastChasing;
    private bool checkOnce;
    private bool dieOnce = true;
    private Vector3 forward;
    
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
        forward = transform.forward;
    }
    
    // Start is called before the first frame update
    protected override void Start()
    {
        base.Start();
        pointNum = 0;
        GoToNextPoint();
        attackColli.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if ( !isStop )
        {
            Vector3 playerTrans = GameManager.Instance.player == null
                ? new Vector3(22f, -4.449f, 41f)
                : GameManager.Instance.player.transform.position;

            dirToPlayer = (playerTrans + Vector3.up - transform.position).normalized;
            
            
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
        else if (isWait)
            enemyStates = EnemyStates.WAIT;
        else if (isStare)
            enemyStates = EnemyStates.STARE;
        else if (isPatol)
            enemyStates = EnemyStates.PATOL;

        switch (enemyStates)
        {
            case EnemyStates.STOP:
                agent.isStopped = true;
                isIdle = true;
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
                isLastChasing = true;
                checkOnce = true;
                
                //Attack
                if (Distance2Player() <= attackRange)
                {
                    isIdle = true;
                    if (canAttack && !isWaiting)
                    {
                        transform.forward = dirToPlayer;
                        AnimAttack();
                        StartCoroutine(RefreshCanAttack());
                    }
                }
                else
                {
                    isIdle = false;
                }

                //Check if need to change states
                chaseTimer += Time.deltaTime;
                if (chaseTimer >= chaseTime)
                {
                    isIdle = true;
                    chaseTimer = 0;
                    if (BCanSee())
                    {
                        if (!BPlayerInArea())
                        {
                            isChase = false;
                            isStare = true;
                        }
                    }
                    else
                    {
                        isChase = false;
                        isWait = true;
                    }
                }
                
                
                break;
            case EnemyStates.WAIT:
                Debug.Log("Wait");
                if (isLastChasing)
                {
                    if (GameManager.Instance.CheckChasingNum(-1))
                    {
                        if(!PlayerAbilityControl.Instance.WhetherTransforming())
                            Music_Play.Instance.BackToNormal();
                    }

                    isLastChasing = false;
                }
                
                waitTimer += Time.deltaTime;
                agent.isStopped = true;
                if (BCanSee())
                {
                    if (BPlayerInArea())
                    {
                        isWait = false;
                        isChase = true;
                        waitTimer = 0;
                    }
                    else
                    {
                        isWait = false;
                        isStare = true;
                        waitTimer = 0;
                    }
                }

                if (waitTimer >= waitTime)
                {
                    waitTimer = 0;
                    isWait = false;
                    GoToNextPoint();
                }
                
                break;
            
            case EnemyStates.STARE:
                Debug.Log("Stare");
                agent.isStopped = true;
                if (isLastChasing)
                {
                    if (GameManager.Instance.CheckChasingNum(-1))
                    {
                        if(!PlayerAbilityControl.Instance.WhetherTransforming())
                            Music_Play.Instance.BackToNormal();
                    }

                    isLastChasing = false;
                }
                //Face to target and Attack
                transform.forward = (GameManager.Instance.player.transform.position - transform.position).normalized;
                
                if (canAttack && Distance2Player() < attackRange)
                {
                    AnimAttack();
                    StartCoroutine(RefreshCanAttack());
                }
                
                //Change to Patol State
                else if (Distance2Player() >= alertDistance || !BCanSee())
                {
                    GoToNextPoint();
                    isStare = false;
                    isIdle = false;
                }
                
                //Change to Chase State
                else if (BCanSee() && BPlayerInArea())
                {
                    isChase = true;
                    isStare = false;
                    isIdle = false;
                }
                break;

            case EnemyStates.PATOL:
                Debug.Log("Patol");
                agent.stoppingDistance = 0;

                if (BCanSee())
                {
                    agent.isStopped = true;
                    isIdle = true;
                    transform.forward = (GameManager.Instance.player.transform.position - transform.position).normalized;
                    if(!isAlert)
                        PlayAlertSound();
                    
                    isAlert = true;

                }
                else if (Vector3.Distance(transform.position, agent.destination) <= 0.7f && !isWaiting)
                {
                    if (isPatolAI)
                    {
                        transform.forward = forward;
                    }
                    agent.isStopped = true;
                    StartCoroutine(Wait());
                }
                else
                {
                    agent.isStopped = false;
                }
                
                if (isAlert)
                {
                    alertTimer += Time.deltaTime;
                    if (alertTimer >= alertTime)
                    {
                        if (BCanSee() && BPlayerInArea())
                        {
                            isChase = true;
                            isIdle = false;
                            if(GameManager.Instance.chasingNum == 0 && !PlayerAbilityControl.Instance.WhetherTransforming())
                                Music_Play.Instance.Chase();
                            GameManager.Instance.chasingNum++;
                        }
                        else if(BCanSee() && ! BPlayerInArea())
                        {
                            isStare = true;
                            isIdle = true;
                        }
                        else
                        {
                            GoToNextPoint();
                        }
                        alertTimer = 0;
                        isAlert = false;
                    }
                }

                if (GameManager.Instance.player != null)
                {
                    if (Vector3.Distance(GameManager.Instance.player.transform.position,transform.position) <= turnDistance
                        && !isAlert && Vector3.Dot(dirToPlayer,transform.forward) < 0 )
                    {
                        StartCoroutine(TurnAround());

                    }
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
        if (Distance2Player() <= 2f && BInSight())
        {
            if (!PlayerAbilityControl.Instance.WhetherTransforming())
            {
                isIdle = true;
                isStop = true;
            }
            PlayerHealth.Instance.GetHurt(EnemyManager.Instance.damageTime,gameObject);
            Debug.Log("Attack!");
        }
    }
    
    public void Die()
    {
        if (!isDead)
        {
            anim.SetTrigger("die");
            AudioManager.instance.Play("Enemy_Death_04");
        }

        if (isLastChasing && dieOnce)
        {
            GameManager.Instance.chasingNum--;
            dieOnce = false;
        }
        isDead = true;
        CloseCollider();
    }

    void PlayAlertSound()
    {
        if(!PlayerAbilityControl.Instance.WhetherTransforming())
            Music_Play.Instance.Found();
    }

    public void RefreshData()
    {
        chaseTimer = 0;
        waitTimer = 0;
        alertTimer = 0;
        isAlert = false;
        isWaiting = false;
    }
    

    public void OpenCollider()
    {
        attackColli.enabled = true;
        attackColli.GetComponent<AttackCollider>().RefreshBool();
    }

    public void CloseCollider()
    {
        attackColli.enabled = false;
    }
    
    float Distance2Player()
    {
        return Vector3.Distance(GameManager.Instance.player.transform.position, transform.position);
    }

    IEnumerator TurnAround()
    {
        float turntimer = 0;
        while(turntimer < 1f)
        {
            turntimer += Time.deltaTime;
            transform.rotation = new Quaternion(transform.rotation.x, transform.rotation.y + Time.deltaTime * 180,
                transform.rotation.z, 0);
            yield return null;
        }
        yield return new WaitForEndOfFrame();
        StartCoroutine(Wait());
    }
}
