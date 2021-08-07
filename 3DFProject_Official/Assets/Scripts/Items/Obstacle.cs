using System;
using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using Unity.VisualScripting;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public int objectLevel;
    private BossAI boss;
    [SerializeField] private bool isWeiHe;
    public bool isTriggered;

    private void Start()
    {
        isTriggered = false;
        boss = GameManager.Instance.Boss.GetComponent<BossAI>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<BossAI>() == null)
        {
            Debug.Log(other.name + "233");
        }
        if (other.GetComponent<BossAI>() != null && isTriggered == false)
        {
            Debug.Log("In Obstacle");
            other.GetComponent<BossAI>().SetTarget(transform.parent.gameObject, objectLevel, isWeiHe);
            other.GetComponent<BossAI>().SetCanAttackObstacle(true);
        }
    }

    public void CheckHealth(int totalDamage)
    {
        if (totalDamage >= objectLevel)
        {
            boss.RefreshObstacleAttack();
            if (transform.parent.GetComponent<Cabinet>()!=null)
            {
                transform.parent.GetComponent<Cabinet>().BeDestroyed();
            }

            if (transform.parent.GetComponent<ObstacleMesh>() != null)
            {
                transform.parent.GetComponent<ObstacleMesh>().BeDestroyed();
            }
        }
    }
}
