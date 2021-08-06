using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class CameraShake : Singleton<CameraShake>
{
    [SerializeField] private CinemachineVirtualCamera wolf_Vcam;
    [SerializeField] private CinemachineVirtualCamera human_Vcam;
    private CinemachineBasicMultiChannelPerlin cinemachineBasicMultiChannelPerlin_wolf;
    private CinemachineBasicMultiChannelPerlin cinemachineBasicMultiChannelPerlin_human;
    [SerializeField] private float intensity;
    [SerializeField] private float time;
    private float shakeTimer;

    void Start()
    {
        cinemachineBasicMultiChannelPerlin_wolf =
            wolf_Vcam.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();
        cinemachineBasicMultiChannelPerlin_human =
            human_Vcam.GetCinemachineComponent<CinemachineBasicMultiChannelPerlin>();
    }

    public void Shake_Wolf()
    {
        cinemachineBasicMultiChannelPerlin_wolf.m_AmplitudeGain = intensity;
        shakeTimer = time;
    }

    public void Shake_Human()
    {
        cinemachineBasicMultiChannelPerlin_human.m_AmplitudeGain = intensity;
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
        if (cinemachineBasicMultiChannelPerlin_human!=null)
        {
            cinemachineBasicMultiChannelPerlin_human.m_AmplitudeGain = 0f;
        }

        if (cinemachineBasicMultiChannelPerlin_wolf != null)
        {
            cinemachineBasicMultiChannelPerlin_wolf.m_AmplitudeGain = 0f;
        }
        
        
    }
}
