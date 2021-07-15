using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class RandomFootstep : MonoBehaviour
{
    [SerializeField]
    public AudioClip[] footClip;
    public AudioSource footSource;

    [Range(0f, 1f)]
    public float volume = 1f;
    [Range(-3f, 3f)]
    public float pitch = 1f;

    [Range(0.6f, 1f)]
    public float volumeMultiplier = 0.6f;
    [Range(0.8f, 1.2f)]
    public float pitchMultiplier = 0.8f;




    private void Start()
    {
        footSource = GetComponent<AudioSource>();
    }
    

    public void PlaySound()
    {
        if (Input.GetKeyDown(KeyCode.S))
        {
            footSource.clip = footClip[Random.Range(0, footClip.Length)];

            footSource.volume = 1f;
            footSource.volume = Random.Range(footSource.volume * volumeMultiplier, 1f);
            footSource.pitch = 1f;
            footSource.pitch = Random.Range(footSource.pitch * volumeMultiplier, 1.2f);

            footSource.Play();
        }
    }
}
