using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack : Singleton<PlayerAttack>
{
    private int AttackNum = 1;
    [SerializeField]private Animator Anim;
    [SerializeField] private Animator AttackCamAnim;
    [SerializeField]private Transform AttackLeftPoint;
    [SerializeField] private Transform AttackRightPoint;
    [SerializeField]private float AttackRange;
    [SerializeField] private LayerMask enemyLayer;
    private bool leftAttackStart;
    private bool rightAttackStart;
    void Start()
    {
        AttackNum = 1;
        leftAttackStart = false;
        rightAttackStart = false;
    }

    void Update()
    {
        if (leftAttackStart)
        {
            AttackDetect(AttackLeftPoint);
        }

        if (rightAttackStart)
        {
            AttackDetect(AttackRightPoint);
        }

    }
    public void Attack()
    {
        if (Anim != null)
        {
            Anim.SetTrigger("Attack");
        }
    }
    public void AttackAnimAlter()
    {
        AttackNum++;
        var mark = AttackNum % 2;
        if (Anim != null)
        {
            Anim.SetInteger("AttackNum", mark);
        }
    }
    public void PlayerInteract()
    {
        if (Anim != null)
        {
            Anim.SetTrigger("Interact");
        }
    }

    public void StartLeft()
    {
        AttackCamAnim.SetBool("isLeftAttack",true);
    }

    public void EndLeft()
    {
        AttackCamAnim.SetBool("isLeftAttack", false);
    }

    public void StartRight()
    {
        AttackCamAnim.SetBool("isRightAttack", true);
    }
    public void EndRight()
    {
        AttackCamAnim.SetBool("isRightAttack", false);
    }

    private void AttackDetect(Transform atkTransform)
    {
        Collider[] colliderArray = Physics.OverlapSphere(atkTransform.position, AttackRange, enemyLayer);
        foreach (var enemyCollider in colliderArray)
        {
            enemyCollider.GetComponent<PatolAI>().Die();
            GameManager.Instance.PlayBloodFx(enemyCollider.GetComponent<EnemyController>().bloodFxPos);
        }
    }


    public void StartLeftLAtkDetect()
    {
        leftAttackStart = true;
    }

    public void EndLeftAtkDetect()
    {
        leftAttackStart = false;
    }

    public void StartRightAtkDetect()
    {
        rightAttackStart = true;
    }

    public void EndRightAtkDetect()
    {
        rightAttackStart = false;
    }

    public void PlayAttackSFX()
    {
        AudioManager.instance.Play("Werewolf_Attack");
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(AttackLeftPoint.position,AttackRange);
        Gizmos.DrawWireSphere(AttackRightPoint.position, AttackRange);
    }
}
