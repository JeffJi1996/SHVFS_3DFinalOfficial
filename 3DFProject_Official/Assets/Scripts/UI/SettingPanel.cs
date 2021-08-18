using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SettingPanel : MonoBehaviour
{
    public void CloseSettingPanel()
    {
        AudioManager.instance.Play("UI_Close");
        gameObject.SetActive(false);
    }
}
