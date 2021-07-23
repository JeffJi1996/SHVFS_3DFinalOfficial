using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

public class TEST : MonoBehaviour
{
    public float bloodAmount;

    public GameObject target;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            BleedBehavior.BloodAmount = bloodAmount;
        }

        if (Input.GetKeyDown(KeyCode.D))
        {
            transform.DOLocalRotate(new Vector3(60f, 0, 0), 2);
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            CamLookAt.Instance.LookAt(target.transform.position,2,Rotate);
        }
    }

    void Rotate()
    {
        transform.DOLocalRotate(new Vector3(60f, transform.eulerAngles.y, 0), 2);
    }
}
