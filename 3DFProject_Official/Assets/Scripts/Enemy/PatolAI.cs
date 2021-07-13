using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public enum EnemyStates { CHASE, PATOL, STOP, WAIT, STARE }
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
    }

    void SwitchState()
    {
        if (isStop)
            enemyStates = EnemyStates.STOP;
        else if (isChase)
            enemyStates = EnemyStates.CHASE;
        else if (isStare)
            enemyStates = EnemyStates.STARE;
        else if (isWait)
            enemyStates = EnemyStates.WAIT;
        else if (isPatol)
            enemyStates = EnemyStates.PATOL;

        switch (enemyStates)
        {
            case EnemyStates.STOP:
                agent.isStopped = true;
                break;
            case EnemyStates.CHASE:
                Debug.Log("Chase");
                agent.isStopped = false;
                agent.destination = GameManager.Instance.player.transform.position;
                if (canAttack && Vector3.Distance(transform.position, GameManager.Instance.player.transform.position) < attackRange && !isWaiting) 
                {
                    //PlayerHealth.Instance.GetHurt(damageTime);
                    Debug.Log("Attack!");

                    StartCoroutine(RefreshCanAttack());
                }

                // if (!BPlayerInArea())
                // {
                //     isWait = true;
                //     isChase = false;
                // }
                break;
            case EnemyStates.STARE:
                Debug.Log("Stare");
                agent.isStopped = true;
                transform.forward = (GameManager.Instance.player.transform.position - transform.position).normalized;
                if (Vector3.Distance(GameManager.Instance.player.transform.position, transform.position) >=
                    alertDistance || !BCanSee())
                {
                    GoToNextPoint();
                    isStare = false;
                }
                break;
            case EnemyStates.WAIT:
                Debug.Log("Wait");
                agent.isStopped = true;
                timer += Time.deltaTime;
                if (timer >= waitTime)
                {
                    timer = 0;
                    isWait = false;
                    GoToNextPoint();
                }

                break;
            case EnemyStates.PATOL:
                Debug.Log("Patol");
                if (Vector3.Distance(transform.position, agent.destination) <= 0.7f && !isWaiting)
                {
                    agent.isStopped = true;
                    StartCoroutine(Wait());
                }
                //Debug.Log(Vector3.Distance(transform.position, agent.destination));
                break;
        }
    }

    void GoToNextPoint()
    {
        agent.isStopped = false;
        agent.destination = new Vector3(patolVectors[pointNum].x, transform.position.y, patolVectors[pointNum].z);
        pointNum++;
        if (pointNum == patolPoints.Count)
            pointNum = 0;
    }

    IEnumerator Wait()
    {
        isWaiting = true;
        yield return new WaitForSeconds(waitTime);
        agent.isStopped = false;
        isWaiting = false;
        if (!isStop && !isChase)
        {
            GoToNextPoint();
        }
    }
    
}
