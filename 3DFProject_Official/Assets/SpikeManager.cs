using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeManager : Singleton<SpikeManager>
{
    [SerializeField]private float NormalActiveTime;
    [SerializeField]private float SpikeDamage;
    [HideInInspector]public float nowActiveDuration;

    protected override void Awake()
    {
        base.Awake();
        nowActiveDuration = NormalActiveTime;
    }

    public float GetSpikeDamage()
    {
        return SpikeDamage;
    }


}
