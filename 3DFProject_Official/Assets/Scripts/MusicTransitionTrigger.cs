using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class MusicTransitionTrigger : MonoBehaviour
{
    public AudioMixer audioMixer;



    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            StartCoroutine(MusicTransitionFade.StartFade(audioMixer, "Amb1Vol", 2f, 0.0001f));
            StartCoroutine(MusicTransitionFade.StartFade(audioMixer, "Amb2Vol", 2f, 1f));
        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            StartCoroutine(MusicTransitionFade.StartFade(audioMixer, "Amb1Vol", 2f, 1f));
            StartCoroutine(MusicTransitionFade.StartFade(audioMixer, "Amb2Vol", 2f, 0.0001f));
        }
    }
}
