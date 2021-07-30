using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlankManager : Singleton<BlankManager>
{
    [SerializeField] private float interactRange;
    [SerializeField] private ParticleSystem woodFx;
    public float GetInteractRange()
    {
        return interactRange;
    }

    public void PlayWoodFx(Transform playTrans)
    {
        woodFx.transform.position = playTrans.position;
        woodFx.transform.rotation = playTrans.rotation;
        woodFx.Play();
    }
}
