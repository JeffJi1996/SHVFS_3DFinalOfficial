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
    [SerializeField] private Transform emissionPoint;
    public event EventHandler OnDestroy;
    public bool isTriggered;

    private void Start()
    {
        isTriggered = false;
        boss = GameManager.Instance.Boss.GetComponent<BossAI>();
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name);
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
            StartCoroutine(DelayDestroy());
        }
    }

    IEnumerator DelayDestroy()
    {
        yield return new WaitForSeconds(0.75f);
        boss.RefreshObstacleAttack();
        ObstacleManager.Instance.PlayObstacleFx(emissionPoint);
        if (transform.parent.GetComponent<Cabinet>()!=null)
        {
            transform.parent.GetComponent<Cabinet>().BeDestroyed();
        }

        else if (transform.parent.GetComponent<ObstacleMesh>() != null)
        {
            transform.parent.GetComponent<ObstacleMesh>().BeDestroyed();
        }
    }
}

