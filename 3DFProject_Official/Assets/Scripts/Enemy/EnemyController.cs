using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UIElements;
using Random = UnityEngine.Random;

public enum EnemyStates { CHASE, PATOL, STOP, WAIT, STARE, DEAD }

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyController : MonoBehaviour, IEndGameObserver
{
    protected NavMeshAgent agent;
    protected Collider colli;
 
    [Header("Level Seting")]
    public Transform leftDown;
    public Transform rightUp;
    private Vector3 vLeftDown;
    private Vector3 vRightUp;
    private float length;
    private float depth;
    private float left;
    private float down;

    [Header("Basic Settings")]
    protected float speed;
    protected bool stopOnce;
    public float attackRange;
    public int sightAngle = 120;

    [SerializeField]
    protected Vector3 dirToPlayer;
    public LayerMask layerMask;

    protected bool isStop;
    protected bool isChase;
    protected bool isPatol;
    protected bool isWait;
    protected bool isStare;
    protected bool isDead;

    protected float deadTime;
    protected bool isIdle;
    protected bool canAttack;
    
    [SerializeField] protected float waitTime;
    protected float waitTimer;
    [SerializeField] protected float chaseTime = 5f;
    protected float chaseTimer = 0;
    [SerializeField] protected float alertTime = 2f;
    protected float alertTimer = 0;
    public float alertDistance;
    [SerializeField] protected float turnDistance = 5f;
    [SerializeField] protected float turnTime = 1f;
    protected float timer;
    protected Animator anim;

    public Transform bloodFxPos;
    protected virtual void Awake()
    {
        agent = GetComponent<NavMeshAgent>();
        colli = GetComponent<Collider>();
        speed = agent.speed;
        timer = 0;
        deadTime = 0;
        anim = GetComponentInChildren<Animator>();
        
        vLeftDown = leftDown.position;
        vRightUp = rightUp.position;
        length = rightUp.position.x - leftDown.position.x;
        depth = rightUp.position.z - leftDown.position.z;
        isPatol = true;
    }

    protected virtual void Start()
    {
        GameManager.Instance.AddObserver(this);
        GameManager.Instance.AddCGObserver(this);
    }

    private void OnDisable()
    {
        GameManager.Instance.RemoveObserver(this);
        GameManager.Instance.RemoveCGObserver(this);
    }

    protected virtual void Update()
    {
        //isChase = !player.GetComponent<PlayerAbilityControl>().PowerUpState;
        //isEscape = !isChase;
    }
    
    protected bool BCanSee()
    {
        Ray myRay = new Ray(transform.position, dirToPlayer);
        Physics.Raycast(myRay, out RaycastHit hitInfo,100f, layerMask, QueryTriggerInteraction.Ignore);
        //Debug.Log(hitInfo.collider.name);
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

    protected bool BPlayerInArea()
    {
        if (GameManager.Instance.player.transform.position.x >= vLeftDown.x && GameManager.Instance.player.transform.position.z >= vLeftDown.z &&
            GameManager.Instance.player.transform.position.x <= vRightUp.x && GameManager.Instance.player.transform.position.z <= vRightUp.z)
            return true;
        else
            return false;
    }

    protected bool BInSight()
    {
        float sight = 0.5f * sightAngle;
        if (Vector3.Dot(transform.forward,
                (GameManager.Instance.player.transform.position- transform.position).normalized) >=
            Mathf.Sin(sight * Mathf.Deg2Rad))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    
    protected IEnumerator RefreshCanAttack()
    {
        canAttack = false;
        yield return new WaitForSeconds(2f);
        canAttack = true;
    }

    public void EndNotify()
    {
        //transform.forward = new Vector3(GameManager.Instance.player.transform.position.x - transform.position.x,0, GameManager.Instance.player.transform.position.z - transform.position.z).normalized;
        //agent.enabled = false;
        isStop = false;
        isChase = false;
        isStare = false;
        isWait = false;
        isPatol = true;
        GetComponent<PatolAI>().RefreshData();
    }
    public void CGTime()
    {
        isStop = true;
        Debug.Log("Enemy Stop");
    }

    public void EndCG()
    {
        isStop = false;
        stopOnce = true;
        GetComponent<PatolAI>().GoToNextPoint();
        Debug.Log("Enemy Run");
    }

    public void AnimAttack()
    {
        anim.SetTrigger("attack");
        AudioManager.instance.Play("Enemy_Attack_01");
    }

    public void ChuJue()
    {
        anim.SetTrigger("chuJue");
        SetIsStop();
    }

    public void SetIsStop()
    {
        isStop = true;
    }
}
