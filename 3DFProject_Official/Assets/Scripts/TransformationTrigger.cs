using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;



public class TransformationTrigger : MonoBehaviour
{
    public AudioMixer audioMixer;

   
 
    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.Space))
        {       
            audioMixer.SetFloat("LowPass", 2000f);
            audioMixer.SetFloat("HighPass", 100f);
            audioMixer.SetFloat("MasterVolume", 3f);
            
        }
        else if(Input.GetKeyUp(KeyCode.Space))
        {
            StartCoroutine(LowAndHighPassFader.LowPassFade(audioMixer, "LowPass", 1f, 10000f));
            StartCoroutine(LowAndHighPassFader.HighPassFade(audioMixer, "HighPass", 1f, 20f));
            StartCoroutine(LowAndHighPassFader.HighPassFade(audioMixer, "MasterVolume", 1f, -3f));
           
        }
    }








}
