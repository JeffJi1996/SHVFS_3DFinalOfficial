using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class UIManager : Singleton<UIManager>
{
    [Header("Werewolf UI Panel")] 
    public GameObject timePanel;
    public Image timeTrack;
    public Slider timeTrack2;
    private bool isTimeOpen;
    private float fullTime;
    private float curTime;
    public float waitTime;
    private bool canDrop;
    private bool isExitTransform;
    public bool isActive;
    private float timeTrack2Timer;
    private float tempTime;
    [SerializeField] private Color originColor;
    [SerializeField] private Color glitterColor;
    [SerializeField] private float colorChangeTime = 0.1f;
    [SerializeField] private float startChangeTime = 3f;
    private bool isOriginColor = true;
    private float glitterTimer = 0f;
    private Image handle;

    [Header("OtherPanel")]
    [SerializeField] private GameObject pausePanel;
    [SerializeField] private GameObject settingPanel;
    [SerializeField] private GameObject[] pauseList;
    private bool isPause;
    private bool isSettingOpen;
    

    protected override void Awake()
    {
        base.Awake();
        
        fullTime = 15f;
        timeTrack2Timer = 0;
        timeTrack.color = originColor;
        handle = timeTrack2.transform.GetChild(3).GetChild(0).GetComponent<Image>();
    }

    private void Start()
    {
        pausePanel.SetActive(isPause);
        settingPanel.SetActive(isSettingOpen);
        timeTrack2.gameObject.SetActive(false);
        timePanel.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (isTimeOpen && canDrop)
        {
            curTime -= Time.deltaTime;
            timeTrack.fillAmount = curTime / fullTime;
            timeTrack2.value = timeTrack.fillAmount;
            if (curTime <= startChangeTime)
            {
                glitterTimer += Time.deltaTime;
                if (glitterTimer >= colorChangeTime)
                {
                    ChangeColor();
                    glitterTimer = 0f;
                }
                if (curTime <= 0)
                {
                    StartCoroutine(DelayHide());
                }
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
        timeTrack2.gameObject.SetActive(true);
        timePanel.SetActive(true);
        timePanel.GetComponent<Image>().color = Color.white;
        handle.color = Color.white;
        timeTrack.color = originColor;
        isOriginColor = true;
        glitterTimer = 0f;
        timeTrack.fillAmount = 1;
        curTime = fullTime;
        isTimeOpen = true;
        StopCoroutine(DelayHide());
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
        float timer = 0f;
        isTimeOpen = false;
        isExitTransform = true;
        
        while (timer < waitTime)
        {
            timer += Time.deltaTime;
            timePanel.GetComponent<Image>().color = new Color(1,1,1,1f - timer/waitTime);
            handle.color = new Color(1,1,1,1f - timer/waitTime);
            yield return null;
        }
        yield return new WaitForFixedUpdate();
        if (!PlayerAbilityControl.Instance.WhetherTransforming())
        {
            isTimeOpen = false;
            timePanel.SetActive(false);
        }
    }

    IEnumerator TimeTrack2()
    {
        var tempCurTime = Mathf.Max(curTime - 1f,0);
        var deltaTime = tempTime - tempCurTime;
        while (timeTrack2Timer <= 1f)
        {
            timeTrack2Timer += Time.deltaTime;
            timeTrack2.value = tempCurTime / fullTime + (1 - timeTrack2Timer) * deltaTime / fullTime;
            //Debug.Log(timeTrack2.fillAmount);
            yield return 0;
        }

        yield return new WaitForEndOfFrame();
        timeTrack2Timer = 0;
    }

    void ChangeColor()
    {
        if (isOriginColor)
            timeTrack.color = glitterColor;
        else
            timeTrack.color = originColor;
        isOriginColor = !isOriginColor;
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
        for (var i = 0; i < pauseList.Length; i++)
        {
            pauseList[i].SetActive(false);
        }
        settingPanel.SetActive(isSettingOpen);
    }

    public void CloseSettingPanel()
    {
        isSettingOpen = false;
        for (var i = 0; i < pauseList.Length; i++)
        {
            pauseList[i].SetActive(true);
        }
        settingPanel.SetActive(isSettingOpen);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene(0);
    }
    
}
