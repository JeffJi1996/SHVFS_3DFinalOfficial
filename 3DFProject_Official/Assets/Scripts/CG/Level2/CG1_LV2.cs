using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CG1_LV2 : MonoBehaviour
{
    [SerializeField] private GameObject Player;
    public void ClosePlayerInput()
    {
        PlayerInputSystem.Instance.StopVelocity();
        Player.GetComponent<PlayerInputSystem>().enabled = false;
        Player.GetComponentInChildren<MouseLook>().enabled = false;
    }

    public void StartPlayerInput()
    {
        Player.GetComponent<PlayerInputSystem>().enabled = true;
        Player.GetComponentInChildren<MouseLook>().enabled = true;
    }

    public void CG1_LV2_Start()
    {
        ClosePlayerInput();
    }

    public void CG1_LV2_End()
    {
        StartPlayerInput();
    }
}
