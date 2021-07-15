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
            AudioManager.instance.Play("Player_Trans");
            UIManager.Instance.TimePanelOpen();
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

    public float GetFullDuration()
    {
        return transformDuration;
    }

    public float GetCurrentDuration()
    {
        return curDuration;
    }

    public void CamToWolf()
    {
        anim.SetBool("isTransforming", true);
    }

    public void CGRestTime()
    {
        isTransforming = true;
        anim.SetBool("isTransforming", true);
        curDuration = transformDuration;
        HandMesh.SetActive(true);
    }
}
