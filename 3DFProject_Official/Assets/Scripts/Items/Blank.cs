using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;

public class Blank : InteractableWolf
{
    protected override float InteractRange()
    {
        return BlankManager.Instance.GetInteractRange();
    }

    protected override void Interact()
    {
        hasBeenInteracted = true;
        GetOutUIHide();
        Destroy(this.gameObject);
    }
}
