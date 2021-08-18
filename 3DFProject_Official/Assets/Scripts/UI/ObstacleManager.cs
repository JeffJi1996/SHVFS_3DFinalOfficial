using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleManager : Singleton<ObstacleManager>
{
    [SerializeField] private ParticleSystem obstacleFx;
    [SerializeField] private GameObject Boss;

    public void PlayObstacleFx(Transform playTrans)
    {
        obstacleFx.transform.position = playTrans.position;
        obstacleFx.transform.rotation = playTrans.rotation;
        obstacleFx.Play();
    }

    public void Register()
    {
        GameManager.Instance.RegisterBoss(Boss);
    }
}
