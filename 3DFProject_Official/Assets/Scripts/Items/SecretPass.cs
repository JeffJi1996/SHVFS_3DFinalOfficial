using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecretPass : MonoBehaviour
{
    [SerializeField] private Obstacle obstacle;
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<BossAI>() != null)
        {
            other.GetComponent<BossAI>().SetTarget(obstacle.gameObject,obstacle.objectLevel ,false);
        }
    }
}
