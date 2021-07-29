using System;
using System.Diagnostics;
using UnityEngine;

public class GroundDetect : MonoBehaviour
{
    private RaycastHit hitInfo;
    [SerializeField] private float detectRange;

    public enum GroundType
    {
        Wood,
        Concrete,
        Ceramic,
        None,
    }
    public GroundType groundType;

    void Update()
    {
        DetectFloor();
    }

    private string DetectFloor()
    {
        Ray ray = new Ray(transform.position, Vector3.down);
        if (Physics.Raycast(ray, out hitInfo, detectRange, LayerMask.NameToLayer("Ground"), QueryTriggerInteraction.Ignore))
        {
            if (hitInfo.collider.GetComponent<Wood>()!= null)
            {
                groundType = GroundType.Wood;
                return "Wood";
            }
            else if (hitInfo.collider.GetComponent<Concrete>() != null)
            {
                groundType = GroundType.Concrete;
                return "Concrete";
            }
            else if (hitInfo.collider.GetComponent<Ceramic>() != null)
            {
                groundType = GroundType.Ceramic;
                return "Ceramic";
            }
            else
            {
                groundType = GroundType.None;
                return "None";
            }
           
        }
        else
        {
            groundType = GroundType.None;
            return "None";
        }
       
    }

}
