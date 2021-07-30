using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Blank_2 : MonoBehaviour
{
    private bool isInTrigger = false;
    private bool canInteract = false;
    private bool hasBeenInteracted = false;
    public LayerMask interactLayer;
    private float angle;

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
        if (!hasBeenInteracted && isInTrigger && col.GetComponent<PlayerAbilityControl>().WhetherTransforming())
        {
            UIHideInBack();
            RaycastHit hit;
            Click_UIManager.Instance.ChangeUI(false, InteractPosition());
            canInteract = false;
            PlayerAttack.Instance.interactBlank = false;
            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, InteractRange(), interactLayer, QueryTriggerInteraction.Ignore))
            {
                Click_UIManager.Instance.ChangeUI(true, InteractPosition());
                PlayerAttack.Instance.interactBlank = true;
                canInteract = true;
            }
        }
    }
    void Update()
    {
        if (canInteract && PlayerInputSystem.Instance.isActiveAndEnabled)
        {
            if (Input.GetKeyDown(KeyCode.Mouse0))
            {
                Interact();
                PlayerAttack.Instance.PlayerInteract();
                PlayerAttack.Instance.interactBlank = false;
            }
        }
    }




    protected void GetInUIShow()
    {
        Click_UIManager.Instance.GetUI(InteractPosition());
    }

    protected void GetOutUIHide()
    {
        Click_UIManager.Instance.ReturnUI(InteractPosition());
    }


    protected GameObject InteractPosition()
    {
        return transform.GetComponentInChildren<InteractPosition>().gameObject;
    }

    protected void UIHideInBack()
    {
        var dirItem = (transform.position - PlayerMovement.Instance.gameObject.transform.position);
        var dir1 = new Vector3(dirItem.x, 0, dirItem.z);
        var dirCam = new Vector3(Camera.main.transform.forward.x, 0, Camera.main.transform.forward.z);
        angle = Vector3.Angle(dir1, dirCam);
        if (angle > 90 && angle < 270)
        {
            Click_UIManager.Instance.UIHide(InteractPosition());
        }
        else
        {
            Click_UIManager.Instance.UIShow(InteractPosition());
        }
    }
    public float InteractRange()
    {
        return BlankManager.Instance.GetInteractRange();
    }
    public void Interact()
    {
        hasBeenInteracted = true;
        GetOutUIHide();
        GetComponent<Collider>().enabled = false;
        BlankManager.Instance.PlayWoodFx(transform);
        AudioManager.instance.Play("sfx_destroyPlank");
        Destroy(gameObject);
    }
}
