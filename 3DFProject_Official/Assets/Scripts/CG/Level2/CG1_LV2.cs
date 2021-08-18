using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CG1_LV2 : MonoBehaviour
{
    [SerializeField] private GameObject Player;
    [SerializeField] private Transform CGObstacle;
    [SerializeField] private GameObject Skip_UI;
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
        SettlementPanel.Instance.SetTimerPause();
    }

    public void ObstacleDestroy()
    {
        CGObstacle.GetComponent<Collider>().enabled = false;
        ObstacleManager.Instance.PlayObstacleFx(CGObstacle);
        CGObstacle.GetComponent<ObstacleMesh>().BeDestroyed();
    }
    public void CG1_LV2_End()
    {
        StartPlayerInput();
        SettlementPanel.Instance.SetTimerResume();
        if (Skip_UI.activeSelf)
        {
            Skip_UI.GetComponent<Animator>().SetTrigger("Out");
        }
    }

    public void BossRoal()
    {
        var boss = GetComponentInChildren<BossAI>();
        boss.PlaySound(boss.GetComponent<BossSound>().bossRoar);
    }
}
