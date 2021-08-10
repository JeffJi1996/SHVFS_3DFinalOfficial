using UnityEngine;

public class Caw : MonoBehaviour
{
    private bool isTriggered;

    void Start()
    {
        isTriggered = false;
    }
    void OnTriggerEnter(Collider col)
    {
        if (!isTriggered && col.GetComponent<PlayerMovement>() != null)
        {
           Debug.Log("ÎÚÑ»½Ð"); 
        }
        
    }
}
