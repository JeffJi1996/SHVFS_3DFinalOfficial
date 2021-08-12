using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class CG1Trigger : MonoBehaviour
{
    [SerializeField] private PlayableDirector CG1_Level2;
    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null)
        {
            CG1_Level2.Play();
            Destroy(this.gameObject);
        }
    }
}
