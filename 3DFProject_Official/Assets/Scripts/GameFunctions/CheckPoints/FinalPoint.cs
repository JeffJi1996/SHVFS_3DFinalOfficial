using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class FinalPoint : MonoBehaviour
{
    private Collider collider;

    [SerializeField]
    private PlayableDirector FinalCG;

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            FinalCG.Play();
        }
    }
}
