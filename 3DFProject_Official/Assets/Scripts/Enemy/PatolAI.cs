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
            
            if ( !isDead && Vector3.Dot(dirToPlayer,transform.forward) < 0 && 
                 Vector3.Distance(playerTrans,transform.position) <= turnDistance)
            {
                
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

                //Check if need to chang states
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
                waitTimer += Time.deltaTime;
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
            PlayerHealth.Instance.GetHurt(EnemyManager.Instance.damageTime,gameObject);
            if (PlayerAbilityControl.Instance.WhetherTransforming())
                UIManager.Instance.DecreaseTime(EnemyManager.Instance.damageTime);
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
        isDead = true;
        CloseCollider();
    }

    void PlayAlertSound()
    {
        Debug.Log("Alert Sound");
    }

    public void RefreshData()
    {
        chaseTimer = 0;
        waitTimer = 0;
        alertTimer = 0;
        isAlert = false;
        isWaiting = false;
    }

    void Alert()
    {
        
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
}
