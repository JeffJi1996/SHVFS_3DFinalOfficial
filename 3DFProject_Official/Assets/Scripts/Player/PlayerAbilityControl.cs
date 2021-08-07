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

    [Header("Partcle")]
    public GameObject ScreenFx;
    public ParticleSystem mohu;
    public GameObject mohuLong;
    void Start()
    {
        isTransforming = false;
        anim = GetComponent<Animator>();
        HandMesh.SetActive(false);
        isInMoon = false;
        doOnce = false;
        ScreenFx.SetActive(false);
        //mohuLong.SetActive(false);
    }

    void Update()
    {
        if (isTransforming && !isInMoon)
        {
            
            if (curDuration > 0f && curDuration <= transformDuration)
            {
                curDuration -= Time.deltaTime;
                doOnce = true;
            }
            if (curDuration <= 0f && doOnce)
            {
                if (!isInMoon) BackToHuman();
                if (isInMoon) curDuration = transformDuration;
                doOnce = false;
            }
        }
    }

    public void Transform()
    {
        curDuration = transformDuration;
        isTransforming = true;
        anim.SetBool("isTransforming", true);
        HandMesh.SetActive(true);
        PlayFx();
    }

    public void BackToHuman()
    {
        if (isTransforming)
        {
            isTransforming = false;
            anim.SetBool("isTransforming", false);
            HandMesh.SetActive(false);
        }
        ScreenFxOff();
    }

    public bool WhetherTransforming()
    {
        return isTransforming;
    }

    public void ReduceTranDuration(float recution)
    {
        if (Instance.isActiveAndEnabled)
        {
            curDuration -= recution;
            UIManager.Instance.DecreaseTime(recution);
        }
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

    public bool IsInMoon()
    {
        return isInMoon;
    }

    private void ScreenFxOn()
    {
        ScreenFx.SetActive(true);
        ScreenFx.GetComponent<ParticleSystem>().Play();
    }

    void ScreenFxOff()
    {
        ScreenFx.SetActive(false);
        mohuLong.SetActive(false);
        mohu.Play();
    }

    private void PlayMohu()
    {
        mohu.Play();
        StartCoroutine(MohuLong());
    }

    public void PlayFx()
    {
        ScreenFxOn();
        PlayMohu();
        //Debug.Log("Play FX");
    }

    IEnumerator MohuLong()
    {
        yield return new WaitForSeconds(0.8f);
        mohuLong.SetActive(true);
        mohuLong.GetComponent<ParticleSystem>().Play();
    }
}
