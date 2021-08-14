using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CobWeb : MonoBehaviour,ICheckPointObserver
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
        CPManager.Instance.AddObserver(this);
        AudioManager.instance.Play("SFX_SpiderWeb");
    }

    void Initialize()
    {
        hasTriggered = false;
        WebMesh.SetActive(true);
    }

    public void CheckPoint()
    {
        Initialize();
    }
}
