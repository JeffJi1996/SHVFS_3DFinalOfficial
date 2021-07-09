using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.Animations;

public class LookAway : Singleton<LookAway>
{
    public Transform target;
    public float rotateSpeed;
    // private bool startRotate;
    // private float lerpFloat;
    // private bool endRotate;

    void Start()
    {
        // startRotate = false;
        // endRotate = false;
    }

    // Update is called once per frame
    void Update()
    {
        // if (startRotate)
        // {
        //     Vector3 lookDirection = target.transform.position - transform.position;
        //     Quaternion lookOnLook = Quaternion.LookRotation(lookDirection);
        //     transform.rotation = Quaternion.Slerp(transform.rotation, lookOnLook, lerpFloat);
        //     lerpFloat = rotateSpeed * Time.deltaTime;
        //
        //     if (Vector3.Angle(transform.forward.normalized, lookDirection.normalized) < 1)
        //     {
        //         endRotate = true;
        //         startRotate = false;
        //     }
        // }
        
    }
    public void LookAtCG(Transform lookTarget) 
    {
        var targetPlayerVer = lookTarget.position - target.position;
        //var angle = Vector3.Angle(target.forward, targetPlayerVer);
        Vector3 temp1 = new Vector3(target.forward.x, 0, target.forward.z);
        Vector3 temp2 = new Vector3(targetPlayerVer.x, 0, targetPlayerVer.z);
        var angle = Vector3.Angle(temp1, temp2);
        var duration = angle / rotateSpeed;
        PlayerInputSystem.Instance.enabled = false;
        MouseLook.Instance.enabled = false;
        target.DOLookAt(lookTarget.position, duration).OnComplete(CGMoon.Instance.IntoCG2);
    }
    
}
