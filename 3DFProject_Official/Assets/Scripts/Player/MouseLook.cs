using System.Collections;
using System.Collections.Generic;
using Cinemachine;
using UnityEngine;

public class MouseLook : Singleton<MouseLook>
{
    public float mouseSensitivity = 100f;

    [SerializeField]private Transform playerBody;
    [SerializeField]private CinemachineVirtualCamera[] cams;
    [SerializeField] private GameObject hands;

    private float xRotation = 0f;
    void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        //mouseSensitivity
    }

    // Update is called once per frame
    void Update()
    {
        float mouseX = Input.GetAxis("Mouse X") * mouseSensitivity * Time.deltaTime;
        float mouseY = Input.GetAxis("Mouse Y") * mouseSensitivity * Time.deltaTime;

        xRotation -= mouseY;
        xRotation = Mathf.Clamp(xRotation, -90f, 90f);

        foreach (var cam in cams)
        {
            cam.transform.localRotation = Quaternion.Euler(xRotation,0f,0f);
        }
        
        if (hands.activeSelf)
        {
          hands.transform.localRotation = Quaternion.Euler(xRotation, 0f, 0f);  
        }
        
        playerBody.Rotate(Vector3.up *mouseX);
    }

    public void StopMouseLook()
    {
        if (MouseLook.Instance.isActiveAndEnabled)
        {
            MouseLook.Instance.enabled = false;
        }
    }

}
