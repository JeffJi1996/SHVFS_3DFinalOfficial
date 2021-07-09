using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MoonLight : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            Debug.Log(111);
            PlayerAbilityControl.Instance.Transform();
            PlayerAbilityControl.Instance.ChangeMoonState(true);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null )
        {
            PlayerAbilityControl.Instance.ChangeMoonState(true);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            PlayerAbilityControl.Instance.ChangeMoonState(false);
        }
    }
}
