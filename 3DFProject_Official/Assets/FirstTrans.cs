using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstTrans : MonoBehaviour
{
    public GameObject Player;
    public GameObject Hand;
    public GameObject FirstMoon;
    public void FirstTranStart()
    {
        Hand.SetActive(true);
        FirstMoon.GetComponent<CGMoon>().enabled = false;
    }

    public void Transform()
    {
        PlayerAbilityControl.Instance.CamToWolf();
    }

    public void End()
    {
        Player.GetComponent<PlayerInputSystem>().enabled = true;
        PlayerAbilityControl.Instance.CGRestTime();
        FirstMoon.AddComponent<MoonLight>();
        FirstMoon.GetComponentInChildren<CGMoon>().enabled = false;
        Player.GetComponentInChildren<MouseLook>().enabled = true;
    }
}
