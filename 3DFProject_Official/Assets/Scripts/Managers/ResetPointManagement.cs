using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetPointManagement : Singleton<ResetPointManagement>
{
    [SerializeField]private Transform nowResetPoint;

    public Transform ReturnResetPoint()
    {
        return nowResetPoint;
    }
}
