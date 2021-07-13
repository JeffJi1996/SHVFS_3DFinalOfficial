using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{
    protected bool isInTrigger = false;
    protected bool canInteract = false;
    protected bool hasBeenInteracted = false;
    public LayerMask interactLayer;
    private float angle;

    protected void GetInUIShow()
    {
        InteractUIManager.Instance.GetUI(InteractPosition());
    }

    protected void GetOutUIHide()
    {
        InteractUIManager.Instance.ReturnUI(InteractPosition());
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
        if (angle>90 && angle<270)
        {
            InteractUIManager.Instance.UIHide(InteractPosition());
        }
        else
        {
            InteractUIManager.Instance.UIShow(InteractPosition());
        }
    }
    protected virtual float InteractRange()
    {
        Debug.LogError("need interactRange");
        return 0;
    }
    protected virtual void Interact()
    {
        Debug.Log(gameObject.name+"Item Interact");
    }
}
