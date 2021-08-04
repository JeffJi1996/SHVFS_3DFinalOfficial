using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public int objectLevel;
    private BossAI boss;
    [SerializeField] private bool isWeiHe; 
    private void Start()
    {
        boss = GameManager.Instance.Boss.GetComponent<BossAI>();
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name);
        if (other.GetComponent<BossAI>() != null)
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
            transform.parent.gameObject.SetActive(false);
        }
    }
}
