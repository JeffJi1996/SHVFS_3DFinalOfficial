using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraManager : MonoBehaviour
{

    public List<GameObject> cg1Cameras = new List<GameObject>();
    
    public void CloseCGCameras()
    {
        for (var i = 0; i < cg1Cameras.Count; i++)
        {
            cg1Cameras[i].SetActive(false);
        }
    }
}
