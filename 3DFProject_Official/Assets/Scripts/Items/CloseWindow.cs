using System;
using System.Collections;
using System.Collections.Generic;
using Aura2API;
using Unity.VisualScripting;
using UnityEngine;

public class CloseWindow : MonoBehaviour,ICheckPointObserver
{
    private bool isTriggered;
    [SerializeField] private GameObject transformTrigger;
    [SerializeField] private Animator doorAnim;
    [SerializeField] private AuraVolume auraVolume;

    void Initialize()
    {
        if (isTriggered)
        {
            doorAnim.SetTrigger("Open");
            transformTrigger.SetActive(true);
            isTriggered = false;
            auraVolume.densityInjection.strength = 0.5f;
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (!isTriggered && col.GetComponent<PlayerMovement>()!=null)
        {
            Trigger();
            GetComponent<AudioSource>().Play();
        }
    }

    IEnumerator MoonLightFadeOut()
    {
        while (auraVolume.densityInjection.strength > 0)
        {
            auraVolume.densityInjection.strength -= Time.deltaTime*0.5f;
            yield return null;
        }
    }

    void Trigger()
    {
        StartCoroutine(MoonLightFadeOut());
        doorAnim.SetTrigger("Close");
        transformTrigger.SetActive(false);
        PlayerAbilityControl.Instance.ChangeMoonState(false);
        UIManager.Instance.ExitMoon();
        isTriggered = true;
        CPManager.Instance.AddObserver(this);
    }
    
    public void CheckPoint()
    {
        Initialize();
    }
}
