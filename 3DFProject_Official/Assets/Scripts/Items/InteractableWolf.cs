using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractableWolf : Interactable
{
    void OnTriggerEnter(Collider col)
    {
        if (!hasBeenInteracted)
        {
            if (col.GetComponent<PlayerMovement>() != null && col.GetComponent<PlayerAbilityControl>().WhetherTransforming())
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
        if (!hasBeenInteracted&&isInTrigger && col.GetComponent<PlayerAbilityControl>().WhetherTransforming())
        {
            UIHideInBack();
            RaycastHit hit;
            E_UIManager.Instance.ChangeUI(false, InteractPosition());
            canInteract = false;

            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, InteractRange(), interactLayer, QueryTriggerInteraction.Ignore))
            {
                E_UIManager.Instance.ChangeUI(true, InteractPosition());
                canInteract = true;
            }
        }
    }
    void Update()
    {
        if (canInteract && PlayerInputSystem.Instance.isActiveAndEnabled && Input.GetKeyDown(KeyCode.E))
        {
            Interact();
            PlayerAttack.Instance.PlayerInteract();
        }
    }
}
