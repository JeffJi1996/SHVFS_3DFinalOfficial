using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class TimeLinePause : MonoBehaviour
{
    private bool StartDetectResume;
    private PlayableDirector currentPlayableDirector;

    void Update()
    {
        if (StartDetectResume)
        {
            if (Input.GetKeyDown(KeyCode.Mouse0))
            {
                StartDetectResume = false;
                currentPlayableDirector.Resume();
            }
        }

    }
    public void PauseCG(PlayableDirector playableDirector)
    {
        currentPlayableDirector = playableDirector;
        playableDirector.Pause();
        StartDetectResume = true;
    }

}
