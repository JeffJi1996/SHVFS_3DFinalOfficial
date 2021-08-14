using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CheckPoint_2 : MonoBehaviour
{
    void OnTriggerEnter(Collider col)
    {
        if (col.GetComponent<PlayerMovement>() != null)
        {
            
            CheckPointManager.Instance.ChangeCheckPoint(transform);
            GameManager.Instance.Boss.GetComponent<BossAI>().SetSecondSavePoint();
            CPManager.Instance.ClearList();

            GetComponent<BoxCollider>().enabled = false;
        }
    }
}
