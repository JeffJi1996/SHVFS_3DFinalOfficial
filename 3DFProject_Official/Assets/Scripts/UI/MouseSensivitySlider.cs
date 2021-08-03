using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MouseSensivitySlider : MonoBehaviour
{
    [SerializeField] private InputField input;
    [SerializeField] private Slider slider;
    private int tempValue = 100;
    private int num = 0;
    private bool isInputChanged;

    private void Start()
    {
        if (MouseLook.Instance != null)
        {
            input.text = MouseLook.Instance.mouseSensitivity.ToString();
            slider.value = MouseLook.Instance.mouseSensitivity * 0.002f;
        }
        else
        {
            input.text = GameManager.Instance.mouseSensitivity.ToString();
            slider.value = GameManager.Instance.mouseSensitivity * 0.002f;
        }
    }

    public void OnValueChanged()
    {
        if (!isInputChanged)
        {
            int currentValue = (int) (slider.value * 500);
            //Debug.Log(currentValue);
            input.text = currentValue.ToString();
            if (MouseLook.Instance != null)
            {
                MouseLook.Instance.mouseSensitivity = currentValue;
            }
            else
            {
                GameManager.Instance.mouseSensitivity = currentValue;
            }
        }
        else
        {
            isInputChanged = false;
        }
    }

    public void OnInputChanged()
    {
        if (IsNumberic(input.text, num))
        {
            isInputChanged = true;
            slider.value = num * 0.002f;
            Debug.Log(slider.value);
            if (MouseLook.Instance != null)
            {
                MouseLook.Instance.mouseSensitivity = num;
            }
            else
            {
                GameManager.Instance.mouseSensitivity = num;
            }
            input.text = num.ToString();
            tempValue = num;
        }
        else
        {
            input.text = tempValue.ToString();
        }
    }

    public void OnEdit()
    {
        if (MouseLook.Instance != null)
        {
            tempValue = MouseLook.Instance.mouseSensitivity;
        }
        else
        {
            tempValue = GameManager.Instance.mouseSensitivity;
        }
    }
    
    bool IsNumberic(string str, int result)
    {
        bool isNum;
        isNum = int.TryParse(str, out result);
        num = result;
        return isNum;
    }
    
    
}
