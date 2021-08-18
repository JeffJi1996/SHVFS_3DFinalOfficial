using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightController : MonoBehaviour
{
    [SerializeField]private float detectRange;
    [SerializeField]private Transform[] lightsTrans;
    private void Update()
    {
        for (int i = 0; i < lightsTrans.Length; i++)
        {
            if (Vector3.Distance(lightsTrans[i].position, transform.position) <= detectRange)
            {
                lightsTrans[i].GetComponent<Light>().enabled = true;
            }
            else
            {
                lightsTrans[i].GetComponent<Light>().enabled = false;
            }
        }
        
    }
}
