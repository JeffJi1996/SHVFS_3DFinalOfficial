using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public int objectLevel;

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<BossAI>() != null)
        {
            other.GetComponent<BossAI>().SetTarget(gameObject,objectLevel);
            other.GetComponent<BossAI>().SetCanAttackObstacle(true);
        }
    }

    public void CheckHealth(int totalDamage)
    {
        if (totalDamage >= objectLevel)
        {
            BossAI.Instance.RefreshObstacleAttack();
            Destroy(gameObject);
        }
    }
    
    
}
