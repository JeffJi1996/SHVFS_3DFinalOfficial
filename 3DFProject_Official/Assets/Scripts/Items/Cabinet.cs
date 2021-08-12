using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cabinet : MonoBehaviour,ICheckPointObserver
{
    public bool isDestroyed;
    [SerializeField]private GameObject LeftMesh;
    [SerializeField]private GameObject RightMesh;


    void Start()
    {
        Initialize();
    }

    void OnTriggerEnter(Collider col)
    {
        //Debug.Log(col.name);
        if (col.GetComponent<PlayerMovement>()!= null&&!isDestroyed)
        {
            PlayerMovement.Instance.AdjustWalkingSpeed(CabinetManager.Instance.GetSpeedRate());
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null && !isDestroyed)
        {
            PlayerMovement.Instance.AdjustWalkingSpeed(1/CabinetManager.Instance.GetSpeedRate());
        }
    }

    public void BeDestroyed()
    {
        isDestroyed = true;
        GetComponentInChildren<Obstacle>().isTriggered = true;
        PlayerMovement.Instance.RecoverSpeed();
        LeftMesh.SetActive(false);
        RightMesh.SetActive(false);
        CPManager.Instance.AddObserver(this);
    }

    public void Initialize()
    {
        GetComponentInChildren<Obstacle>().isTriggered = false;
        isDestroyed = false;
        LeftMesh.SetActive(true);
        RightMesh.SetActive(true);
    }

    public void CheckPoint()
    {
        Initialize();
    }

}
