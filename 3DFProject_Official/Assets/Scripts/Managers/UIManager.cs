using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UIManager : Singleton<UIManager>
{
    [Header("TimePanel")] 
    public GameObject timePanel;
    public Image timeTrack;
    public Image timeTrack2;
    private bool isTimeOpen;
    private float fullTime;
    private float curTime;
    public float waitTime;
    public bool isActive;
    private float timeTrack2Timer;
    private float tempTime;
    
    private void Start()
    {
        timePanel.SetActive(false);
        //fullTime = PlayerAbilityControl.Instance.GetFullDuration();
        curTime = fullTime;
        timeTrack2Timer = 0;
        timeTrack2.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (isTimeOpen)
        {
            curTime -= Time.deltaTime;
            timeTrack.fillAmount = curTime / fullTime;
            if (curTime <= 0)
            {
                StartCoroutine(DelayHide());
            }
        }
    }


    public void TimePanelOpen()
    {
        timePanel.SetActive(true);
        curTime = fullTime;
        isTimeOpen = true;
    }

    public void DecreaseTime(float decreaseTime)
    {
        tempTime = curTime;
        curTime -= decreaseTime;
        curTime = Mathf.Max(0, curTime);
        if (curTime == 0)
        {
            //SoundManager.instance.PlaySound("sfx_recover");
            PlayerAbilityControl.Instance.BackToHuman();
            StartCoroutine(DelayHide());
        }

        StartCoroutine(TimeTrack2());
    }

    IEnumerator DelayHide()
    {
        yield return new WaitForSeconds(waitTime);
        if (!PlayerAbilityControl.Instance.WhetherTransforming())
        {
            isTimeOpen = false;
            timePanel.SetActive(false);
        }
    }

    IEnumerator TimeTrack2()
    {
        timeTrack2.gameObject.SetActive(true);
        var tempCurTime = curTime;
        var deltaTime = tempTime - tempCurTime;
        while (timeTrack2Timer <= 1f)
        {
            timeTrack2Timer += Time.deltaTime;
            timeTrack2.fillAmount = tempCurTime / fullTime + (1 - timeTrack2Timer) * deltaTime / fullTime;
            //Debug.Log(timeTrack2.fillAmount);
            yield return 0;
        }

        yield return new WaitForEndOfFrame();
        timeTrack2Timer = 0;
        timeTrack2.gameObject.SetActive(false);
    }
}
