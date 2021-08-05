using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoint_1 : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            CheckPointManager.Instance.ChangeCheckPoint(transform);
            GetComponent<Collider>().enabled = false;
        }
    }
}
