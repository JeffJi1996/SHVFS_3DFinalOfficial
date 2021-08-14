using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FnialSubtitle : MonoBehaviour
{
    public GameObject Player;
    public GameObject Skip_CG;
    public void FinalCG_Start()
    {
        Player.GetComponent<PlayerInputSystem>().enabled = false;
        Player.GetComponentInChildren<MouseLook>().enabled = false;
        SettlementPanel.Instance.SetTimerPause();
    }

    public void FinalCG_End()
    {
        if (Skip_CG.activeSelf)
        {
            Skip_CG.GetComponent<Animator>().SetTrigger("Out");
        }
        SettlementPanel.Instance.Settlement();
    }
}
