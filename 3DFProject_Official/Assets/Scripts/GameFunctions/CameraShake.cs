using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CameraShake : Singleton<CameraShake>
{
    [SerializeField] private CinemachineVirtualCamera Vcam;
    private CinemachineBasicMultiChannelPerlin cinemachineBasicMultiChannelPerlin;

    [SerializeField] private float intensity;
    [SerializeField] private float time;
    private float shakeTimer;

    void Start()
    {
        cinemachineBasicMultiChannelPerlin =
            Vcam.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();
    }

    public void Shake()
    {
        cinemachineBasicMultiChannelPerlin.m_AmplitudeGain = intensity;
        shakeTimer = time;
    }

    void Update()
    {
        if (shakeTimer > 0)
        {
            shakeTimer -= Time.deltaTime;
            if (shakeTimer <= 0f)
            {
                CloseShake();
            }
        }
    }

    public void CloseShake()
    {
        shakeTimer = 0;
        cinemachineBasicMultiChannelPerlin.m_AmplitudeGain = 0f;
    }
}
