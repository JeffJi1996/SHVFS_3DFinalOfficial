using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class CGMoon : Singleton<CGMoon>
{

    public PlayableDirector timeLine;
    public Transform LookTarget;
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            LookAway.Instance.LookAtCG(LookTarget);
        }
    }

    public void IntoCG2()
    {
        timeLine.Play();
    }
}
