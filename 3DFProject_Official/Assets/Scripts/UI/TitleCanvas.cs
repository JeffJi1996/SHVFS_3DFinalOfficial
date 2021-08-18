using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;

public class TitleCanvas : MonoBehaviour
{
    public GameObject settingPanel;

    private void Awake()
    {
        settingPanel.SetActive(false);
    }

    public void PlaySound()
    {
        AudioManager.instance.Play("UI_Click");
    }
}
