using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class BossSound : MonoBehaviour
{
    public AudioClip bossAttack;
    public AudioClip bossBreath;
    public AudioClip bossRoar;
    public AudioClip[] ruinHit;
    public AudioClip[] cabinet;

    public AudioClip GetRuinHit()
    {
        return ruinHit[Random.Range(0, ruinHit.Length)];
    }
    
    public AudioClip GetCabinetHit()
    {
        return cabinet[Random.Range(0, cabinet.Length)];
    }
}
