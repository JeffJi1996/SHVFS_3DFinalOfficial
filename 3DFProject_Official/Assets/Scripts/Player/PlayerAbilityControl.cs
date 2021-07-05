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

    //����ʱ��Ч��
    public void Transform()
    {
        if (isTransforming == false)
        {
            //ʹ��ʱ�俪ʼ����
            curDuration = transformDuration;
            //״̬�л�
            isTransforming = true;
            //��ͷ�л�
            anim.SetBool("isTransforming", true);
            //��ģ��
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
