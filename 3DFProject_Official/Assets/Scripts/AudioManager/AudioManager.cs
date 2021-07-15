﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using UnityEngine.Audio;
using UnityEngine;
using Random = System.Random;

public class AudioManager : MonoBehaviour
{
    public Sound[] sounds;
    public static AudioManager instance;
    // Start is called before the first frame update
    void Awake()
    {
        if (instance == null)
            instance = this;
        else
        {
            Destroy(gameObject);
            return;
        }

        DontDestroyOnLoad(gameObject);
        foreach (Sound s in sounds)
        {
            s.source = gameObject.AddComponent<AudioSource>();
            if (s.outPutGroup == null)
            {
                s.source.outputAudioMixerGroup = sounds[0].outPutGroup;
            }
            else
            {
                Debug.Log(s.name);
                s.source.outputAudioMixerGroup = s.outPutGroup;
            }
            //s.source.clip = s.clip;
            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
        }

    }

    void Start()
    {
        Play("Player_Death");
    }

    // Update is called once per frame
    //take in a string with the name of our sound
    public void Play(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound:" + name + "not found!");
            return;
        }
        Debug.Log(s.name);
        AudioSource source = s.source;
        //int i = Random.R
        s.source.clip = s.clips[0];
        s.source.Play();
        Debug.Log("sounds great!");

    }
}
