using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class StoneTrap : MonoBehaviour
{
    [SerializeField] private GameObject StoneMesh;
    [SerializeField] private float fallDuration;
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
        }
    }

    private void StoneFallDown()
    {
        Tweener tweener = StoneMesh.transform.DOMoveY(0f, fallDuration);
        tweener.OnComplete(CameraShake.Instance.Shake_Human);
    }

    private void Initialize()
    {
        isTriggered = false;
        StoneMesh.transform.position = iniPosition;
    }


}
