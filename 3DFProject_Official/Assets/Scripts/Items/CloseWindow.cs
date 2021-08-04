using System.Collections;
using System.Collections.Generic;
using Aura2API;
using Unity.VisualScripting;
using UnityEngine;

public class CloseWindow : MonoBehaviour
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
            StartCoroutine(MoonLightFadeOut());
            doorAnim.SetTrigger("Close");
            transformTrigger.SetActive(false);
            isTriggered = true;
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


}
