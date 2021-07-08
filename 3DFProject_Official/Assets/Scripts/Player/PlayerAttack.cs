using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack : Singleton<PlayerAttack>
{
    private int AttackNum = 1;
    private Animator Anim;

    void Start()
    {
        AttackNum = 1;
        Anim = GetComponent<Animator>();
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
    void OnTriggerEnter(Collider collider)
    {
        //如果是敌人，就把敌人杀掉
    }


}
