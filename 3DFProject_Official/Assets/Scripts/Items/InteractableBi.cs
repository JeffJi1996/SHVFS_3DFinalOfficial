using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableBi : Interactable
{
    void OnTriggerEnter(Collider col)
    {
        if (!hasBeenInteracted)
        {
            if (col.GetComponent<PlayerMovement>() != null)
            {
                isInTrigger = true;
                GetInUIShow();
            }
        }
    }
    void OnTriggerExit(Collider col)
    {
        if (!hasBeenInteracted)
        {
            if (col.GetComponent<PlayerMovement>() != null)
            {
                isInTrigger = false;
                GetOutUIHide();
            }
        }
    }
    void OnTriggerStay(Collider col)
    {
        if (isInTrigger&&!hasBeenInteracted)
        {
            UIHideInBack();
            RaycastHit hit;
            InteractUIManager.Instance.ChangeUI(false, InteractPosition());
            canInteract = false;

            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, InteractRange(), interactLayer, QueryTriggerInteraction.Ignore))
            {
                InteractUIManager.Instance.ChangeUI(true, InteractPosition());
                canInteract = true;
            }
        }
    }
    void Update()
    {
        if (!hasBeenInteracted&&canInteract
            && PlayerInputSystem.Instance.isActiveAndEnabled && Input.GetKeyDown(KeyCode.E))
        {
            Interact();
        }
    }
}
