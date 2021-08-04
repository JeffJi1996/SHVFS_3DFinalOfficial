using System.Collections;
using System.Collections.Generic;
using UnityEngine.Audio;
using UnityEngine;

public static class LowAndHighPassFader
{

    public static IEnumerator LowPassFade(AudioMixer audioMixer, string exposedParam, float duration, float targetFreq)
    {
        float currentTime = 0;
        float currentFreq;
        audioMixer.GetFloat(exposedParam, out currentFreq);


        while (currentTime < duration)
        {
            currentTime += Time.deltaTime;
            float newFreq = Mathf.Lerp(currentFreq, targetFreq, currentTime / duration);
            audioMixer.SetFloat(exposedParam, newFreq);
            yield return null;
        }
        yield break;
    }

    public static IEnumerator HighPassFade(AudioMixer audioMixer, string exposedParam, float duration, float targetFreq)
    {
        float currentTime = 0;
        float currentFreq;
        audioMixer.GetFloat(exposedParam, out currentFreq);


        while (currentTime < duration)
        {
            currentTime += Time.deltaTime;
            float newFreq = Mathf.Lerp(currentFreq, targetFreq, currentTime / duration);
            audioMixer.SetFloat(exposedParam, newFreq);
            yield return null;
        }
        yield break;
    }
}