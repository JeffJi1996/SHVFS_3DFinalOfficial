using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeDamage : MonoBehaviour
{
    private bool canHurt;

    void OnTriggerEnter(Collider col)
    {
        canHurt = true;
    }

    void OnTriggerStay(Collider col)
    {
        if (canHurt)
        {
            if (col.GetComponent<PlayerMovement>() != null)
            {
                canHurt = false;
                PlayerHealth.Instance.GetHurt(SpikeManager.Instance.GetSpikeDamage(),gameObject);
            }
        }
    }
}
