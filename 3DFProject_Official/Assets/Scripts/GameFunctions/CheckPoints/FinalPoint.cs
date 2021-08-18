using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class FinalPoint : MonoBehaviour
{
    private Collider collider;
    [SerializeField] private GameObject Boss;
    
    [SerializeField]
    private PlayableDirector FinalCG;

    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            FinalCG.Play();
            Boss.transform.GetChild(0).GetComponent<AudioSource>().enabled = false;
        }
    }

    private void Awake()
    {
        StartCoroutine(PlayerCamLock());
    }
    private void Start()
    {
        Music_Play.Instance.BackToNormal();
    }
    
    IEnumerator  PlayerCamLock()
    {
        yield return new WaitForSeconds(0.1f);
        MouseLook.Instance.enabled = true;
    }
}
