using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeDamage : MonoBehaviour
{
    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>()!= null)
        {
            Debug.Log("PlayerDie");
            
            
        }
    }
}
