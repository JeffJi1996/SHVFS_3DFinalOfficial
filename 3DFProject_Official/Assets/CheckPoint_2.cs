using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoint_2 : MonoBehaviour
{
    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null)
        {
            CPManager.Instance.ClearList();
            Destroy(this.gameObject);
        }
    }
}
