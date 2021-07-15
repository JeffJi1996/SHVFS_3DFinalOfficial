using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TitleCanvas : MonoBehaviour
{
    public GameObject settingPanel;

    private void Awake()
    {
        settingPanel.SetActive(false);
    }
}
