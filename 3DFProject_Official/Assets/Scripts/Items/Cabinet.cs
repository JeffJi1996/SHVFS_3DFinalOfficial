using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cabinet : MonoBehaviour
{
    private bool isDestroyed;
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

    void Initialize()
    {
        isDestroyed = false;
        LeftMesh.SetActive(true);
        RightMesh.SetActive(true);
    }
}
