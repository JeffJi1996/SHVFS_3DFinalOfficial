using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;

public class Attack : MonoBehaviour
{
    public void EnemyAttack()
    {
        GetComponentInParent<PatolAI>().Attack();
    }

    public void RunSFX()
    {
        GetComponentInParent<RandomFootstep>().PlaySound();
    }
}
