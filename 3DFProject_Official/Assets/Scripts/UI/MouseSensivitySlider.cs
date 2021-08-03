using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MouseSensivitySlider : MonoBehaviour
{
    [SerializeField] private InputField input;
    [SerializeField] private Slider slider;

    public void OnValueChanged()
    {
        int currentValue = (int) slider.value * 500;
        input.text = "currentValue";
        if (MouseLook.Instance != null)
        {
            MouseLook.Instance.mouseSensitivity = currentValue;
        }
        else
        {
            GameManager.Instance.mouseSensitivity = currentValue;
        }
    }

    public void OnInputChanged()
    {
        
    }
    
    bool IsNumberic(string str, int result)
    {
        bool isNum;
        isNum = int.TryParse(str, out result);
        return isNum;
    }
    
    
}
