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

    void OnTriggerEnter(Collider collider)
    {
        //����ǵ��ˣ��Ͱѵ���ɱ��
    }


}
