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
        AttackNum++;
        var mark = AttackNum % 2;

        if (Anim != null)
        {
            Anim.SetInteger("AttackNum", mark);
            Anim.SetTrigger("Attack");
        }
    }

    void OnTriggerEnter(Collider collider)
    {
        //如果是敌人，就把敌人杀掉
    }


}
