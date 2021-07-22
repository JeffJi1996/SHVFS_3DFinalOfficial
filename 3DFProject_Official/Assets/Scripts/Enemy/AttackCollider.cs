using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttackCollider : MonoBehaviour
{
    private Collider colli;
    private bool isAttacked;
    [SerializeField] private PatolAI patolAi;
    void Awake()
    {
        colli = GetComponent<Collider>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null && !isAttacked)
        {
            patolAi.Attack();
            isAttacked = true;
        }
    }

    public void RefreshBool()
    {
        isAttacked = false;
    }
}
