using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingSound : MonoBehaviour
{
    [SerializeField] private bool hasPlayedSFX;

    void Start()
    {
        hasPlayedSFX = false;
    }

    void OnCollisionEnter(Collision col)
    {
        if (!hasPlayedSFX && col.gameObject.layer == LayerMask.NameToLayer("Ground"))
        {
            if (transform.GetComponentInParent<FallingFrame>() != null)
            {
                GetComponent<AudioSource>().Play();
            }
            else if (transform.parent.GetChild(0).GetComponent<BookEvent>() != null)
            {
                GetComponent<AudioSource>().Play();
            }
            hasPlayedSFX = true;
        }
    }
}
