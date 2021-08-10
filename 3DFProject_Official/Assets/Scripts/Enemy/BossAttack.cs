using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BossAttack : MonoBehaviour
{
    [SerializeField] private Collider coll;
    [SerializeField] private float damageTime = 4f;
    
    private void Awake()
    {
        coll.enabled = false;
    }

    public void OpenAttackCollider()
    {
        coll.enabled = true;
    }

    public void CloseAttackCollider()
    {
        coll.enabled = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            PlayerHealth.Instance.GetHurt(damageTime,transform.parent.gameObject);
        }
    }
}
