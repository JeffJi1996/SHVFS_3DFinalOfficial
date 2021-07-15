using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class VolumeControl : MonoBehaviour
{
    // Start is called before the first frame update
    //用三个[SerializeField] Filed 来控制音频的设置
    //第一个是AudioMixer的音量的变量， 用来分辨我们现在控制的具体是哪一个AudioMixer
    //第二个是AudioMixer,便于之后用来分开控制音乐和音效；
    //第三个是

    [SerializeField] string _volumePrameter = "MasterVolume";
    [SerializeField] AudioMixer _mixer;
    [SerializeField] Slider _slider;
    [SerializeField] float _multiplier = 30f;
    [SerializeField] Toggle _toggle;
    private bool _disableToggleEvent;

    private void Awake()
    {
        //创建一个methods
        _toggle.isOn = true;
        _slider.value = _slider.maxValue;
        _slider.onValueChanged.AddListener(HandleSliderValueChanged);
        _toggle.onValueChanged.AddListener(HandleToggleValueChanged);
    }

    private void HandleToggleValueChanged(bool enableSound)
    {
        if (_disableToggleEvent)
        {
            return;
        }
        if (enableSound)
        {
            _slider.value = _slider.maxValue;

        }
        else
            _slider.value = _slider.minValue;
    }

    private void HandleSliderValueChanged(float value)
    {
        _mixer.SetFloat(_volumePrameter, value: Mathf.Log10(value) * _multiplier);
        _disableToggleEvent = true;
        _toggle.isOn = _slider.value > _slider.minValue;
        _disableToggleEvent = false;
    }

    //可以设置默认的音效、音量的方案；
    private void OnDisable()
    {
        PlayerPrefs.SetFloat(_volumePrameter, _slider.value);
    }



    // Update is called once per frame
    void Start()
    {
        _slider.value = PlayerPrefs.GetFloat(_volumePrameter, _slider.value);

    }
}
