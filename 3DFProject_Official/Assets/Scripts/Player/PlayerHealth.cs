using System.Collections;
using UnityEngine;
using UnityEngine.Playables;

public class PlayerHealth : Singleton<PlayerHealth>
{
    private GameObject killMeEnemy;
    [SerializeField] private float duration;
    [SerializeField] private int health;
    private bool canBeHurt = true;

    [SerializeField]
    private PlayableDirector playerDeathCG;
    public void GetHurt(float reduction, GameObject _killMeEnemy)
    {
        if (canBeHurt)
        {
            CameraShake.Instance.Shake();
            if (PlayerAbilityControl.Instance.WhetherTransforming() == true)
            {
                PlayerAbilityControl.Instance.ReduceTranDuration(reduction);
                AudioManager.instance.Play("Werewolf_Hurt");
            }

            if (PlayerAbilityControl.Instance.WhetherTransforming() == false)
            {
                killMeEnemy = _killMeEnemy;
                _killMeEnemy.GetComponent<EnemyController>().SetIsStop();
                Die(killMeEnemy);
            }
        }

    }

    public void Die(GameObject KillMeObj)
    {
        canBeHurt = false;
        health--;
        UIManager.Instance.CloseTimePanel();
        PlayerDeath.Instance.Death_StopPlayerInput();
        CamLookAt.Instance.LookAt(killMeEnemy.transform.GetChild(0).position,duration,EnemyAction);
        //AudioManager.instance.Play("Player_Death");
        //playerDeathCG.Play();
    }

    public void EnemyAction()
    {
        if (killMeEnemy.GetComponent<EnemyController>() != null)
        {
            killMeEnemy.GetComponent<EnemyController>().ChuJue();
        }
        else if (killMeEnemy.GetComponent<SpikeDamage>() != null)
        {
            Debug.Log("Kill By Spike");
        }
    }

    public void DeathCG()
    {
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
