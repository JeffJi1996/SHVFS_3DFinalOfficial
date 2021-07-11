using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class TimeLineFunctions : MonoBehaviour
{
    [SerializeField] private GameObject Player;
    [SerializeField] private PlayableDirector CG1;
    [SerializeField] private GameObject firstMoon;
    
    public void StartCG1()
    {
        CG1.Play();
    }

    public void ClosePlayerInput()
    {
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
    }

    
}
