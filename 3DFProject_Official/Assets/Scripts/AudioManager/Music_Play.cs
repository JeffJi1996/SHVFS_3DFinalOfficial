using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class Music_Play : Singleton<Music_Play>
{
    //public AudioClip Mx_Explore;
    //public AudioClip Mx_Dangrous;
    public AudioClip Mx_BridgeToDangrous;
    //public AudioClip Mx_BridgeToExplore;
    //public AudioClip Mx_Combat;
    //public AudioClip Mx_Bridge_CombatToAny;

    public AudioSource m_Mx_Explore;
    public AudioSource m_Mx_Dangrous;
    public AudioSource m_Mx_BridgeToDangrous;
    public AudioSource m_Mx_BridgeToExplore;
    public AudioSource m_Mx_Combat;
    public AudioSource m_Mx_Bridge_CombatToAny;

    public AudioMixerSnapshot Music_Explore;
    public AudioMixerSnapshot Music_Dangrous;
    public AudioMixerSnapshot Music_Combat_Werewolf;


    // Start is called before the first frame update
    void Start()
    {
        Music_Explore.TransitionTo(0f);
        m_Mx_Explore.Play();
    }
    
    public void Chase()
    {
        m_Mx_Dangrous.Stop();
        m_Mx_BridgeToDangrous.Play();
        Music_Dangrous.TransitionTo(3f);
        m_Mx_Dangrous.PlayDelayed(Mx_BridgeToDangrous.length);
    }

    public void Found()
    {
        m_Mx_Explore.Stop();
        m_Mx_BridgeToExplore.Play();
        Music_Explore.TransitionTo(4f);
        m_Mx_Explore.PlayDelayed(1f);
    }

    public void Battle()
    {
        m_Mx_Combat.Stop();
        Music_Combat_Werewolf.TransitionTo(0f);
        m_Mx_Combat.Play();
    }

    public void BackToNormal()
    {
        m_Mx_Explore.Stop();
        m_Mx_Bridge_CombatToAny.Play();
        Music_Explore.TransitionTo(4f);
        m_Mx_Explore.PlayDelayed(1f);
    }
}
