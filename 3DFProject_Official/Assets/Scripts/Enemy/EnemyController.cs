using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UIElements;
using Random = UnityEngine.Random;


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
    public float sightAngle;

    [SerializeField]
    protected Vector3 dirToPlayer;
    public LayerMask layerMask;

    public bool isStop;
    public bool isChase;
    public bool isPatol;
    public bool isWait;
    public bool isStare;
    protected bool isDead;
    protected float deadTime;
    protected bool isIdle;
    protected bool canAttack;
    
    public float waitTime;
    public float alertDistance;
    protected float timer;
    protected Animator anim;
    
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
        if (hitInfo.collider.gameObject.GetComponent<PlayerAbilityControl>() != null)
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
        isChase = false;
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
    }
    
}
