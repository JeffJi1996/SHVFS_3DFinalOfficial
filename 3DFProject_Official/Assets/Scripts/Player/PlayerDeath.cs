using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.SceneManagement;

public class PlayerDeath : MonoBehaviour
{
    [SerializeField] private GameObject HeartArray;
    [SerializeField] private GameObject Player;
    [SerializeField] private PlayableDirector StillAliveCG;
    [SerializeField] private PlayableDirector GameOverCG;
    public void Death_HeartBreak()
    {
        var health = PlayerHealth.Instance.GetPlayerHealth();
        var heart = HeartArray.transform.GetChild(2-health);
        heart.gameObject.GetComponent<Animator>().SetTrigger("Break");
    }

    public void Death_StopPlayerInput()
    {
        Player.GetComponent<PlayerInputSystem>().StopVelocity();
        Player.GetComponent<PlayerInputSystem>().enabled = false;
        Player.GetComponentInChildren<MouseLook>().enabled = false;
    }

    public void Death_ResetPlayer()
    {
        Player.transform.position = ResetPointManagement.Instance.ReturnResetPoint().position;
        Player.transform.rotation = ResetPointManagement.Instance.ReturnResetPoint().rotation;
        Player.GetComponent<Rigidbody>().velocity = Vector3.zero;
        PlayerHealth.Instance.CanHurt();
    }

    public void Death_OpenPlayerInput()
    {
        Player.GetComponent<PlayerInputSystem>().enabled = true;
        Player.GetComponentInChildren<MouseLook>().enabled = true;
    }

    public void Death_Check()
    {
        if (PlayerHealth.Instance.GetPlayerHealth()>0)
        {
            StillAliveCG.Play();
        }
        else if (PlayerHealth.Instance.GetPlayerHealth()==0)
        {
            GameOverCG.Play();
        }
    }

    public void OpenSelect()
    {
        Cursor.lockState = CursorLockMode.None;
    }

    public void PlayAgain()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene()
            .buildIndex);
    }

    public void BackToMainScene()
    {
        UnityEngine.SceneManagement.SceneManager.LoadScene(0);
    }

}
