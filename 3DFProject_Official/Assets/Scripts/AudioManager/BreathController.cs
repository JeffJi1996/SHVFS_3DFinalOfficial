using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class BreathController : MonoBehaviour
{
    public AudioClip[] breathClipStart;
    public AudioSource breathSourceStart;

    public AudioClip[] breathClipStay;
    public AudioSource breathSourceStay;

    public AudioClip[] breathClipEnd;
    public AudioSource breathSourceEnd;





    private void Start()
    {
        //breathSourceStart = GetComponent<AudioSource>();
        //breathSourceStay = GetComponent<AudioSource>();
        //breathSourceEnd = GetComponent<AudioSource>();

    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            breathSourceStart.clip = breathClipStart[Random.Range(0, breathClipStart.Length)];
            breathSourceStart.Play();

            breathSourceStay.clip = breathClipStay[Random.Range(0, breathClipStay.Length)];
            breathSourceStay.PlayDelayed(4f);
            
        }
        
        else if (Input.GetKeyUp(KeyCode.LeftShift))
        {
            breathSourceStart.Stop();
            breathSourceStay.Stop();
            breathSourceEnd.clip = breathClipEnd[Random.Range(0, breathClipEnd.Length)];
            breathSourceEnd.Play();
        }
    }

}
