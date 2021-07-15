using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FinalPoint : MonoBehaviour
{
    [SerializeField] private GameObject WinPanel;

    void Start()
    {
        WinPanel.gameObject.SetActive(false);
    }
    private void OnTriggerEnter(Collider other)
    {
        Cursor.lockState = CursorLockMode.None;
        if (other.GetComponent<PlayerMovement>()!= null)
        {
            WinPanel.SetActive(true);
        }
    }
}
