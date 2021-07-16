using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInputSystem : Singleton<PlayerInputSystem>
{
    private Rigidbody rb;
    private float gravity = -9.81f;
    
    private float DistanceCounter = 0;

    [SerializeField] private float WalkFootSFXFrequency_Hunam;
    [SerializeField] private float WalkFootSFXFrequency_Werewolf;
    [SerializeField] private float RunFootSFXFrequency_Hunam;
    [SerializeField] private float RunFootSFXFrequency_Werewolf;
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }
    void FixedUpdate()
    {
        #region Move
        float moveH = Input.GetAxis("Horizontal");
        float moveV = Input.GetAxis("Vertical");

        Vector3 move = transform.right * moveH + transform.forward * moveV;
        rb.velocity = move * PlayerMovement.Instance.GetCurrentMoveSpeed()+new Vector3(0,gravity*Time.deltaTime,0);
        

        #endregion
        DistanceCounter += rb.velocity.magnitude * Time.deltaTime;
        
    }
    void Update()
    {
        #region Walk && Run

        if (IsMoving())
        {
            if (Input.GetKey(KeyCode.LeftShift))
            {
                PlayerMovement.Instance.Run();
                if (PlayerAbilityControl.Instance.WhetherTransforming())
                {
                    if (DistanceCounter >= 1f/RunFootSFXFrequency_Werewolf)
                    {
                        DistanceCounter = 0f;
                        AudioManager.instance.Play("Werewolf_Foot_Walk_Wood");
                    }
                }
                else
                {
                    if (DistanceCounter >= 1f/ RunFootSFXFrequency_Hunam)
                    {
                        DistanceCounter = 0f;
                        AudioManager.instance.Play("Player_Foot_Walk_Wood");
                    }
                }
            }
            else
            {
                PlayerMovement.Instance.Walk();
                if (PlayerAbilityControl.Instance.WhetherTransforming())
                {
                    if (DistanceCounter >= 1f/WalkFootSFXFrequency_Werewolf)
                    {
                        DistanceCounter = 0f;
                        AudioManager.instance.Play("Werewolf_Foot_Walk_Wood");
                    }
                }
                else
                {
                    if (DistanceCounter >= 1f/ WalkFootSFXFrequency_Hunam)
                    {
                        DistanceCounter = 0f;
                        AudioManager.instance.Play("Player_Foot_Walk_Wood");
                    }
                }
            }
        }

        
        #endregion
        #region TurnAround
        if (Input.GetKeyDown(KeyCode.Mouse2))
        {
            PlayerMovement.Instance.Rotate180();
        }
        #endregion
        #region Attack
        if (PlayerAttack.Instance != null && PlayerAttack.Instance.enabled)
        {
            if (Input.GetKeyDown(KeyCode.Mouse0))
            {
                PlayerAttack.Instance.Attack();
            }
        }
        #endregion

    }

    public void Interact()
    {

    }

    bool IsMoving()
    {
        if (Input.GetKey(KeyCode.A) || Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.D))
            return true;
        else
        {
            return false;
        }
    }
}
