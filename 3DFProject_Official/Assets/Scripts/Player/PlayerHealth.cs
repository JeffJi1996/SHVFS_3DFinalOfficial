 using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class PlayerHealth : Singleton<PlayerHealth>
{
    [SerializeField]private int health;
    private bool canBeHurt = true;

    [SerializeField]
    private PlayableDirector playerDeathCG;
    public void GetHurt(float reduction)
    {
        if (canBeHurt)
        {
            if (PlayerAbilityControl.Instance.WhetherTransforming() == true)
            {
                PlayerAbilityControl.Instance.ReduceTranDuration(reduction);
                AudioManager.instance.Play("Werewolf_Hurt");
                CameraShake.Instance.Shake();
            }

            if (PlayerAbilityControl.Instance.WhetherTransforming() == false)
            {
                CameraShake.Instance.Shake();
                Die();
            }
        }
        
    }
    public void Die()
    {
        canBeHurt = false;
        health--;
        UIManager.Instance.CloseTimePanel();
        AudioManager.instance.Play("Player_Death");
        playerDeathCG.Play();
    }

    public int GetPlayerHealth()
    {
        return health;
    }

    public void CanHurt()
    {
        canBeHurt = true;
    }

}
