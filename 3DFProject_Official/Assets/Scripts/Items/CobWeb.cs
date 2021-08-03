using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CobWeb : MonoBehaviour
{
    private bool hasTriggered;
    [SerializeField] private GameObject WebMesh;

    void Start()
    {
        Initialize();
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null && !hasTriggered)
        {
            Trigger();
        }
    }

    void Trigger()
    {
        hasTriggered = true;
        WebMesh.SetActive(false);
        WebPanel.Instance.StartWebVFX();
    }

    void Initialize()
    {
        hasTriggered = false;
        WebMesh.SetActive(true);
    }

}
