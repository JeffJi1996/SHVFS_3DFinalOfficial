using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PlayerAbilityControl : Singleton<PlayerAbilityControl>
{
    [SerializeField] private bool isTransforming;
    [SerializeField] private GameObject HandMesh;
    [SerializeField] private float transformDuration;
    private float curDuration;

    void Update()
    {
        if (curDuration>=0f && curDuration <= transformDuration)
        {
            curDuration -= Time.deltaTime;
        }
        
    }

    public void Transform()
    {
        curDuration = transformDuration;
        isTransforming = true;
    }

    public void BackToHuman()
    {
        isTransforming = false;
    }

    

}
