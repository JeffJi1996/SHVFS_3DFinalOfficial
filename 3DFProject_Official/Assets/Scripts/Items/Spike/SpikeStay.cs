using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeStay : MonoBehaviour
{
    void OnTriggerEnter(Collider col)
    {
        PlayerHealth.Instance.GetHurt(SpikeManager.Instance.GetSpikeDamage(), gameObject);
    }
}
