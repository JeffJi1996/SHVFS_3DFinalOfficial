using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
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
    private bool canDrop;
    private bool isExitTransform;
    public bool isActive;
    private float timeTrack2Timer;
    private float tempTime;

    [SerializeField] private GameObject pausePanel;
    [SerializeField] private GameObject settingPanel;
    private bool isPause;
    private bool isSettingOpen;
    private void Start()
    {
        timePanel.SetActive(false);
        pausePanel.SetActive(isPause);
        settingPanel.SetActive(isSettingOpen);
        fullTime = 15f;
        timeTrack2Timer = 0;
        timeTrack2.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (isTimeOpen && canDrop)
        {
            curTime -= Time.deltaTime;
            timeTrack.fillAmount = curTime / fullTime;
            if (curTime <= 0)
            {
                StartCoroutine(DelayHide());
            }
        }

        if (isTimeOpen && isExitTransform)
        {
            PlayerAbilityControl.Instance.PlayFx();
            
            AudioManager.instance.Play("Player_Trans");
            isExitTransform = false;
        }

        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (isSettingOpen)
            {
                CloseSettingPanel();
            }
            else
            {
                isPause = !isPause;
                pausePanel.SetActive(isPause);
                if (isPause)
                {
                    Time.timeScale = 0;
                    Cursor.lockState = CursorLockMode.Confined;
                }
                else
                {
                    Cursor.lockState = CursorLockMode.Locked;
                    Time.timeScale = 1;
                }
            }
        }
    }


    public void TimePanelOpen()
    {
        timePanel.SetActive(true);
        timeTrack.fillAmount = 1;
        curTime = fullTime;
        isTimeOpen = true;
    }

    public void CloseTimePanel()
    {
        curTime = 0f;
        isTimeOpen = false;
        timePanel.SetActive(false);
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
        isTimeOpen = false;
        isExitTransform = true;
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

    public void SetFullTime(float maxTime)
    {
        fullTime = maxTime;
    }

    public void EnterMoon()
    {
        canDrop = false;
    }

    public void ExitMoon()
    {
        canDrop = true;
    }

    public void Resume()
    {
        isPause = false;
        pausePanel.SetActive(isPause);
        Time.timeScale = 1;
        Cursor.lockState = CursorLockMode.Locked;
    }

    public void ExitButton()
    {
        Application.Quit();
    }

    public void OpenSettingPanel()
    {
        isSettingOpen = true;
        settingPanel.SetActive(isSettingOpen);
    }

    public void CloseSettingPanel()
    {
        isSettingOpen = false;
        settingPanel.SetActive(isSettingOpen);
    }
}
