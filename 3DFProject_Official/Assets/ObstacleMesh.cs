using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class ObstacleMesh : MonoBehaviour,ICheckPointObserver
{
    [SerializeField] private MeshRenderer mesh;
    [SerializeField] private BoxCollider boxCollider;

    public void BeDestroyed()
    {
        GetComponentInChildren<Obstacle>().isTriggered = true;
        mesh.enabled = false;
        boxCollider.enabled = false;
        CPManager.Instance.AddObserver(this);
    }

    void Initialize()
    {
        mesh.enabled = true;
        boxCollider.enabled = true;
        GetComponentInChildren<Obstacle>().isTriggered = false;
    }

    public void CheckPoint()
    {
        Initialize();
    }

}
