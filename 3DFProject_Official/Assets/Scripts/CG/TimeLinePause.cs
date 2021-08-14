using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class TimeLinePause : MonoBehaviour
{
    private bool StartDetectResume;
    private PlayableDirector currentPlayableDirector;
    [SerializeField] private GameObject Tutor_CG2;

    void Update()
    {
        if (StartDetectResume)
        {
            if (Input.GetKeyDown(KeyCode.Mouse0))
            {
                StartDetectResume = false;
                Tutor_CG2.GetComponent<Animator>().SetTrigger("Out");
                currentPlayableDirector.Resume();
            }
        }

    }
    public void PauseCG(PlayableDirector playableDirector)
    {
        currentPlayableDirector = playableDirector;
        playableDirector.Pause();
        Tutor_CG2.SetActive(true);
        StartDetectResume = true;
    }

}
