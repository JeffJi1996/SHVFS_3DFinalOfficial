using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum GuardStates { CHASE, GUARD, STOP, BACK, STARE, SLEEP }
public class GuardAI : EnemyController
{
    public Transform guardPoint;
    private GuardStates guardStates;
    public float damageTime;
    private bool isWaiting;
    public Collider Trigger;
    private bool isSleep;
    private bool isGuard;
    private bool isBack;

    // Update is called once per frame

    protected override void Awake()
    {
        base.Awake();
        guardPoint = transform;
        canAttack = true;
        isWaiting = false;
    }
    
    // Start is called before the first frame update
    protected override void Start()
    {
        base.Start();
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
            if (!isSleep && BCanSee() && Mathf.Acos(Vector3.Dot(transform.forward, dirToPlayer)) <= 1)
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

            if (isBack && Vector3.Distance(transform.position, guardPoint.position) < 0.5f)
            {
                transform.forward = guardPoint.forward;
                isBack = false;
                isGuard = true;
            }
            SwitchState();
        }
    }

    void SwitchState()
    {
        if (isStop)
            guardStates = GuardStates.STOP;
        else if (isSleep)
            guardStates = GuardStates.SLEEP;
        else if (isChase)
            guardStates = GuardStates.CHASE;
        else if (isStare)
            guardStates = GuardStates.STARE;
        else if (isWait)
            guardStates = GuardStates.BACK;
        else if (isPatol)
            guardStates = GuardStates.GUARD;

        switch (guardStates)
        {
            case GuardStates.STOP:
                agent.isStopped = true;
                break;
            case GuardStates.SLEEP:
                agent.isStopped = true;
                break;
            case GuardStates.CHASE:
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
            case GuardStates.STARE:
                Debug.Log("Stare");
                agent.isStopped = true;
                transform.forward = (GameManager.Instance.player.transform.position - transform.position).normalized;
                if (Vector3.Distance(GameManager.Instance.player.transform.position, transform.position) >=
                    alertDistance || !BCanSee())
                {
                    isBack = true;
                    isStare = false;
                }
                break;
            case GuardStates.BACK:
                agent.destination = guardPoint.position;
                break;
            case GuardStates.GUARD:
                Debug.Log("Guard");
                break;
        }
    }


    public void WakeUp()
    {
        isSleep = false;
    }
}
