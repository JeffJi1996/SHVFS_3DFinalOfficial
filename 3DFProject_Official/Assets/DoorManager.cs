using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorManager : Singleton<DoorManager>
{
    [SerializeField] private float interactRange;
    
    public float GetInteractRange()
    {
        return interactRange;
    }

    

}
