using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundTrigger : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            Debug.Log("Obstacle Broken Sound");
            GameManager.Instance.Boss.transform.forward = Vector3.left;
            gameObject.SetActive(false);
        }
    }
}
