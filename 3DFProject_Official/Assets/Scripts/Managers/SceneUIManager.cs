using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneUIManager : MonoBehaviour
{
    public GameObject pausePanel;
    public GameObject settingPanel;
    private bool isPaused;
    private bool isSettingOpen;
    
    void Awake()
    {
        settingPanel.SetActive(false);
        pausePanel.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (!isSettingOpen)
            {
                isPaused = !isPaused;
                pausePanel.SetActive(isPaused);
            }
            else
            {
                CloseSettingPanel();
            }
        }
    }

    #region Button

    public void ClosePauseButton()
    {
        pausePanel.SetActive(false);
        isPaused = false;
    }

    public void OpenSettingPanel()
    {
        isSettingOpen = true;
        settingPanel.SetActive(true);
    }

    public void CloseSettingPanel()
    {
        isSettingOpen = false;
        settingPanel.SetActive(false);
    }

    #endregion
    
}
