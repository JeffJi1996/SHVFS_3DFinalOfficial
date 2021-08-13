using System.Collections;
using UnityEngine;
using UnityEngine.Playables;

public class PlayerHealth : Singleton<PlayerHealth>
{
    private GameObject killMeEnemy;
    [SerializeField] private float duration;
    [SerializeField] private int health;
    [SerializeField] private PostEffects postEffects;
    [SerializeField] private ParticleSystem hurtFx;
    private bool canBeHurt = true;

    [SerializeField]
    private PlayableDirector playerDeathCG;
    public void GetHurt(float reduction, GameObject _killMeEnemy)
    {
        if (canBeHurt)
        {
            CameraShake.Instance.Shake_Wolf();
            hurtFx.Play();
            if (PlayerAbilityControl.Instance.WhetherTransforming() == true)
            {
                postEffects.Screen_Blur();
                PlayerAbilityControl.Instance.ReduceTranDuration(reduction);
                UIManager.Instance.DecreaseTime(reduction);
                AudioManager.instance.Play("Werewolf_Hurt");
                AudioManager.instance.Play("SFX_Werewolf_Attacked");
            }

            if (PlayerAbilityControl.Instance.WhetherTransforming() == false)
            {
                AudioManager.instance.Play("SFX_Player_Attacked");
                killMeEnemy = _killMeEnemy;
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
            killMeEnemy.GetComponent<EnemyController>().SetIsStop();
            killMeEnemy.GetComponent<EnemyController>().ChuJue();
        }
        else if (killMeEnemy.GetComponent<SpikeDamage>() != null || killMeEnemy.GetComponent<SpikeStay>() != null)
        {
            PlayerDeath.Instance.PlayerDeathEffect();
            DeathCG();
        }
        else if (killMeEnemy.GetComponent<BossAI>() != null)
        {
            killMeEnemy.GetComponent<BossAI>().ChuJue();
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
