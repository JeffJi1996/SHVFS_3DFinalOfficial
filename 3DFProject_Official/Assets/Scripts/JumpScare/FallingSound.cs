using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallingSound : MonoBehaviour
{
    [SerializeField]private bool hasPlayedSFX;

    void Start()
    {
        hasPlayedSFX = false;
    }

    void OnCollisionEnter(Collision col)
    {
        Debug.Log(col.gameObject.layer);
        if (!hasPlayedSFX && col.gameObject.layer == LayerMask.NameToLayer("Ground"))
        {
            AudioManager.instance.Play("Player_Death");
            hasPlayedSFX = true;
        }
    }
}
