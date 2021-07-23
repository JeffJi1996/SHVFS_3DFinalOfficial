using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;

public class Attack : MonoBehaviour
{
    public void RunSFX()
    {
        GetComponentInParent<RandomFootstep>().PlaySound();
    }

    public void OpenCollider()
    {
        GetComponentInParent<PatolAI>().OpenCollider();
    }

    public void CloseCollider()
    {
        GetComponentInParent<PatolAI>().CloseCollider();
    }

    public void EnemyAttack()
    {
        GetComponentInParent<PatolAI>().Attack();
    }

    public void ChuJue()
    {
        PlayerDeath.Instance.PlayerDeathAction();
    }

    public void ChuJueEffect()
    {
        PlayerDeath.Instance.PlayerDeathEffect();
    }
    
    
}
