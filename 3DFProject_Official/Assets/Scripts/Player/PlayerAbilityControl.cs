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

    void Start()
    {
        isTransforming = false;
        anim = GetComponent<Animator>();
        HandMesh.SetActive(false);
    }

    void Update()
    {
        if (isTransforming)
        {
            if (curDuration > 0f && curDuration <= transformDuration)
            {
                curDuration -= Time.deltaTime;
            }

            if (curDuration <= 0f)
            {
                BackToHuman();
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

    void BackToHuman()
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
        curDuration -= recution;
    }

}
