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
    private Animator anim;
    [Header("Debug")]
    [SerializeField] private float curDuration;
    [SerializeField] private bool isInMoon;
    private bool doOnce;
    void Start()
    {
        isTransforming = false;
        anim = GetComponent<Animator>();
        HandMesh.SetActive(false);
        isInMoon = false;
        doOnce = false;
    }

    void Update()
    {
        if (isTransforming)
        {
            if (curDuration > 0f && curDuration <= transformDuration)
            {
                curDuration -= Time.deltaTime;
                doOnce = true;
            }

            if (curDuration <= 0f && doOnce)
            {
                if(!isInMoon) BackToHuman();
                if (isInMoon) curDuration = transformDuration;
                doOnce = false;

            }

        }

    }

    //变身时的效果
    public void Transform()
    {
        if (isTransforming == false)
        {
            //使得时间开始减少
            curDuration = transformDuration;
            //状态切换
            isTransforming = true;
            //镜头切换
            anim.SetBool("isTransforming", true);
            //手模打开
            HandMesh.SetActive(true);

        }


    }

    public void BackToHuman()
    {
        if (isTransforming)
        {
            isTransforming = false;
            anim.SetBool("isTransforming", false);
            HandMesh.SetActive(false);
        }

    }

    public bool WhetherTransforming()
    {
        return isTransforming;
    }

    public void ReduceTranDuration(float recution)
    {
        if(Instance.isActiveAndEnabled)
           curDuration -= recution;
    }

    public void ChangeMoonState(bool whetherInMoon)
    {
        if(Instance.isActiveAndEnabled)
           isInMoon = whetherInMoon;
    }
}
