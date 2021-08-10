using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BookEvent : MonoBehaviour
{
    [SerializeField]private bool isTriggered;
    [SerializeField] private GameObject bookMesh;
    private Rigidbody rb;

    void Start()
    {
        isTriggered = false;
        rb = bookMesh.GetComponent<Rigidbody>();
    }
    void OnTriggerEnter(Collider col)
    {
        if (!isTriggered && col.GetComponent<PlayerMovement>()!= null)
        {
            rb.AddForce(new Vector3(0, 10, 100));
            isTriggered = true;
        }
    }

}
