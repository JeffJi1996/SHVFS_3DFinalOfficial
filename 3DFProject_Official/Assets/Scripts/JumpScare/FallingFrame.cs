using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingFrame : MonoBehaviour
{
    private bool isTriggered;

    void Start()
    {
        isTriggered = false;
    }

    void OnTriggerEnter(Collider col)
    {
        if (!isTriggered && col.GetComponent<PlayerMovement>() != null)
        {
            GetComponentInChildren<Rigidbody>().isKinematic = false;
            isTriggered = true;
        }
    }
}
