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
        AudioManager.instance.Play("sfx_destroyPlank");
        Destroy(this.gameObject);
    }
}
