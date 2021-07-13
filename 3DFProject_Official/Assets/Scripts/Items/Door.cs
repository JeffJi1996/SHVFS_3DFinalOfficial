using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : InteractableBi
{
    protected override float InteractRange()
    {
        return DoorManager.Instance.GetInteractRange();  
    }
    protected override void Interact()
    {
        hasBeenInteracted = true;
        GetOutUIHide();
        GetComponentInChildren<Animator>().SetTrigger("OpenDoor");
    }
}
