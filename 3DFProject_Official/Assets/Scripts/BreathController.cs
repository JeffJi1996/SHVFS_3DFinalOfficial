using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreathController : Singleton<BreathController>
{
    public BreathClip[] BreathClips;
    private void Start()
    {
        //breathSourceStart = GetComponent<AudioSource>();
        //breathSourceStay = GetComponent<AudioSource>();
        //breathSourceEnd = GetComponent<AudioSource>();

    }

    private void Update()
    {
        /*if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            StartCoroutine(BreathStayFade.StartFade(breathSourceStay, 0.5f, 1f));

            breathSourceStart.clip = breathClipStart[Random.Range(0, breathClipStart.Length)];
            breathSourceStart.Play();


            breathSourceStay.clip = breathClipStay[Random.Range(0, breathClipStay.Length)];
            breathSourceStay.PlayDelayed(5f);

        }
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            StartCoroutine(BreathStayFade.StartFade(breathSourceStay, 0.5f, 0.001f));

            breathSourceEnd.clip = breathClipEnd[Random.Range(0, breathClipEnd.Length)];
            breathSourceEnd.PlayDelayed(0.8f);
        }*/
    }
    public void BreathIn(BreathClip breathClip)
    {
        StartCoroutine(BreathStayFade.StartFade(breathClip.breathSourceEnd, 0.5f, 0.001f));
        StartCoroutine(BreathStayFade.StartFade(breathClip.breathSourceStay, 0.5f, 1f));

        breathClip.breathSourceStart.clip = breathClip.breathClipStart[Random.Range(0, breathClip.breathClipStart.Length)];
        breathClip.breathSourceStart.Play();


        breathClip.breathSourceStay.clip = breathClip.breathClipStay[Random.Range(0, breathClip.breathClipStay.Length)];
        breathClip.breathSourceStay.PlayDelayed(5f);
    }

    public void BreathOut(BreathClip breathClip)
    {
        StartCoroutine(BreathStayFade.StartFade(breathClip.breathSourceStay, 0.5f, 0.001f));

        breathClip.breathSourceEnd.clip = breathClip.breathClipEnd[Random.Range(0, breathClip.breathClipEnd.Length)];
        breathClip.breathSourceEnd.PlayDelayed(0.8f);
    }
}

[System.Serializable]
public class BreathClip
{
    public string name;
    public AudioClip[] breathClipStart;
    public AudioSource breathSourceStart;

    public AudioClip[] breathClipStay;
    public AudioSource breathSourceStay;

    public AudioClip[] breathClipEnd;
    public AudioSource breathSourceEnd;
}


