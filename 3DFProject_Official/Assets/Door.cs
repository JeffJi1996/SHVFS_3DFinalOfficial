using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Door : MonoBehaviour
{
    private bool isInDoor = false;
    [SerializeField] private LayerMask interactLayer;
    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null)
        {
            isInDoor = true;
            InteractUIManager.Instance.GetUI(InteractPosition());
        }

    }
    void OnTriggerStay(Collider col)
    {
        if (isInDoor)
        {
            RaycastHit hit;
            InteractUIManager.Instance.ChangeUI(false, InteractPosition());

            if (Physics.Raycast(Camera.main.transform.position, Camera.main.transform.forward, out hit, DoorManager.Instance.GetInteractRange(), interactLayer, QueryTriggerInteraction.Collide))
            {
                if (hit.collider != null)
                {
                    InteractUIManager.Instance.ChangeUI(true, InteractPosition());
                    
                }

            }
        }
    }
    void OnTriggerExit(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null)
        {
            isInDoor = false;
            InteractUIManager.Instance.ReturnUI(InteractPosition());
        }
    }

    private GameObject InteractPosition()
    {
        return transform.parent.GetComponentInChildren<InteractPosition>().gameObject;
    }

    //void OnDrawGizmos()
    //{
    //    Gizmos.DrawLine(Camera.main.transform.position, Camera.main.transform.position + Camera.main.transform.forward * DoorManager.Instance.GetInteractRange());

    //}
}
