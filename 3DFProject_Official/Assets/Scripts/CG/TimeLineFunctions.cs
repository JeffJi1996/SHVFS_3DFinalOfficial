using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class TimeLineFunctions : MonoBehaviour
{
    [SerializeField] private GameObject Player;
    [SerializeField] private PlayableDirector CG1;
    [SerializeField] private GameObject firstMoon;
    [SerializeField] private AudioSource audioSource;
    [SerializeField] private AudioSource moonAudioSource;


    public void StartCG1()
    {
        CG1.Play();
    }

    public void EndCG1()
    {
        audioSource.PlayOneShot(audioSource.clip);
        UIManager.Instance.SetFullTime(PlayerAbilityControl.Instance.GetFullDuration());
        moonAudioSource.volume = 1;
        Debug.Log(111);
    }
    public void ClosePlayerInput()
    {
        PlayerInputSystem.Instance.StopVelocity();
        Player.GetComponent<PlayerInputSystem>().enabled = false;
        Player.GetComponentInChildren<MouseLook>().enabled = false;
    }

    public void ResetPlayerPosition(Transform transform)
    {
        Player.transform.position = transform.position;
        Player.transform.rotation = transform.rotation;
    }
    
    public void EndCG2()
    {
        Destroy(firstMoon.GetComponent<CGMoon>());
        firstMoon.AddComponent<MoonLight>();

        Player.GetComponent<PlayerInputSystem>().enabled = true;
        Player.GetComponentInChildren<MouseLook>().enabled = true;
        Player.GetComponent<PlayerAbilityControl>().CGRestTime();
        GameManager.Instance.EndCG();
        UIManager.Instance.TimePanelOpen();
        UIManager.Instance.ExitMoon();
        moonAudioSource.volume = 0.1f;
        PlayerAbilityControl.Instance.PlayFx();
    }

    public void IntroStart()
    {
        Cursor.lockState = CursorLockMode.Locked;
    }
    public void StartCG()
    {
        GameManager.Instance.CGTime();
        moonAudioSource.volume = 0f;
    }
}