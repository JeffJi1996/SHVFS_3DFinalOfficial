using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.Playables;

public class TimeLineFunctions : MonoBehaviour
{
    [SerializeField] private GameObject Player;
    [SerializeField] private PlayableDirector CG1;
    [SerializeField] private GameObject firstMoon;
    [SerializeField] private AudioSource audioSource;
    [SerializeField] private AudioSource moonAudioSource;
    [SerializeField] private GameObject mohuFx;
    [SerializeField] private GameObject screenFx;
    [SerializeField] private AudioMixerSnapshot CG;
    [SerializeField] private AudioMixerSnapshot CG_End;
    [SerializeField] private GameObject Tutor_CG1;
    [SerializeField] private GameObject SkipCG;

    public void StartCG1()
    {
        CG1.Play();
    }

    public void EndCG1()
    {
        SkipOut();
        audioSource.PlayOneShot(audioSource.clip);
        UIManager.Instance.SetFullTime(PlayerAbilityControl.Instance.GetFullDuration());
        moonAudioSource.volume = 1;
        CG_End.TransitionTo(3.5f);
        Tutor_CG1.SetActive(true);
        SettlementPanel.Instance.SetTimerResume();
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

        SkipOut();

        Player.GetComponent<PlayerInputSystem>().enabled = true;
        Player.GetComponentInChildren<MouseLook>().enabled = true;
        Player.GetComponent<PlayerAbilityControl>().CGRestTime();
        GameManager.Instance.EndCG();
        UIManager.Instance.TimePanelOpen();
        UIManager.Instance.ExitMoon();
        moonAudioSource.volume = 0.1f;
        PlayerAbilityControl.Instance.PlayFx();
        CG_End.TransitionTo(0.5f);
        
        SettlementPanel.Instance.SetTimerResume();
    }

    public void IntroStart()
    {
        Cursor.lockState = CursorLockMode.Locked;
        CG.TransitionTo(0.1f);
        SettlementPanel.Instance.SetTimerPause();
    }
    public void StartCG2()
    {
        GameManager.Instance.CGTime();
        SettlementPanel.Instance.SetTimerPause();
        moonAudioSource.volume = 0f;
        ClosePlayerInput();
        CG.TransitionTo(0.1f);
    }

    public void StartFx()
    {
        mohuFx.SetActive(true);
        mohuFx.GetComponent<ParticleSystem>().Play();
        screenFx.SetActive(true);
        screenFx.GetComponent<ParticleSystem>().Play();
    }

    public void PlayEnemySFX()
    {
        AudioManager.instance.Play("Enemy_Death_04");
    }

    public void PlayPlayerSFX()
    {
        AudioManager.instance.Play("Werewolf_Attack");
    }

    public void SkipOut()
    {
        if (SkipCG.activeSelf)
        {
            SkipCG.GetComponent<Animator>().SetTrigger("Out");
        }
    }
}
