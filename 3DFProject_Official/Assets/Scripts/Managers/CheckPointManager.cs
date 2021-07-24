using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointManager : MonoBehaviour
{
   private Transform checkPos;

   private void Start()
   {
      
   }

   public void ChangeCheckPoint( Transform newCheckPoint)
   {
      checkPos = newCheckPoint;
   }

   public Transform LoadCheckPoint()
   {
      return checkPos;
   }
}
