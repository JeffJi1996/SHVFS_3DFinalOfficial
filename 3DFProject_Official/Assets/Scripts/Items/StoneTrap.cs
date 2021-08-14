using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class StoneTrap : MonoBehaviour,ICheckPointObserver
{
    [SerializeField] private GameObject StoneMesh;
    [SerializeField] private float fallDuration;
    [SerializeField] private float dropToY;
    [SerializeField] private AudioSource audio;
    private Vector3 iniPosition;
    public bool isTriggered;

    private void Start()
    {
        iniPosition = StoneMesh.transform.position;
        Initialize();
    }
    private void OnTriggerEnter()
    {
        if (!isTriggered)
        {
            StoneFallDown();
            isTriggered = true;
            CPManager.Instance.AddObserver(this);
        }
    }

    private void StoneFallDown()
    {
        Tweener tweener = StoneMesh.transform.DOMoveY(dropToY, fallDuration);
        tweener.OnComplete(CameraShake.Instance.Shake_Human);
        audio.Play();
    }

    private void Initialize()
    {
        isTriggered = false;
        StoneMesh.transform.position = iniPosition;
    }

    public void CheckPoint()
    {
        Initialize();
    }

}
