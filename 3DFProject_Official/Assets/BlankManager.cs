using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlankManager : Singleton<BlankManager>
{
    [SerializeField] private float interactRange;
    public float GetInteractRange()
    {
        return interactRange;
    }
}
