using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoint : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            CheckPointManager.Instance.ChangeCheckPoint(transform);
            Destroy(gameObject);
        }
    }
}
