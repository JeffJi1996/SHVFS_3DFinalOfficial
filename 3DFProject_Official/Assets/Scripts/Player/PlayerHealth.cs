using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerHealth : Singleton<PlayerHealth>
{
    [SerializeField]private int health;

    public void GetHurt(float reduction)
    {
        if (PlayerAbilityControl.Instance.WhetherTransforming() == true)
        {
            PlayerAbilityControl.Instance.ReduceTranDuration(reduction);
        }

        if (PlayerAbilityControl.Instance.WhetherTransforming() == false)
        {
            Die();
        }
    }

    public void Die()
    {
        health--;
        Debug.Log("Player die! + left "+health);
    }

}
