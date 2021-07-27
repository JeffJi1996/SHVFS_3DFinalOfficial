using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPointManager : Singleton<CheckPointManager>
{
   private Transform checkPos;

   private void Start()
   {
      ChangeCheckPoint(transform.GetChild(0));
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
