using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossTrigger : MonoBehaviour
{
    [SerializeField] private GameObject targetObstacle;
    [SerializeField] private Transform waitTrans;
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            BossAI boss = GameManager.Instance.Boss.GetComponent<BossAI>();
            boss.WaitState();
            boss.transform.position = waitTrans.position;
            boss.transform.rotation = waitTrans.rotation;
            targetObstacle.SetActive(false);
            
            GetComponent<Collider>().enabled = false;
        }
    }
}
