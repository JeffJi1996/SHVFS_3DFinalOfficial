using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class PlayerHealth : Singleton<PlayerHealth>
{
    [SerializeField]private int health;

    [SerializeField]
    private PlayableDirector playerDeathCG;
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
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            GetHurt(5);
        }
    }
    public void Die()
    {
        health--;
        playerDeathCG.Play();
    }

    public int GetPlayerHealth()
    {
        return health;
    }

}
