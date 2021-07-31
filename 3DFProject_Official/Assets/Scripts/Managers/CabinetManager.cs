using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CabinetManager : Singleton<CabinetManager>
{
    [SerializeField] private float pSpeedRate;

    public float GetSpeedRate()
    {
        return pSpeedRate;
    }
}
