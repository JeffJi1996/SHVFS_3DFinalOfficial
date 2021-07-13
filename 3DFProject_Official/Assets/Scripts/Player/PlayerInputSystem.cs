using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInputSystem : Singleton<PlayerInputSystem>
{
    private Rigidbody rb;
    private float gravity = -9.81f;
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
    }
    void Update()
    {
        #region Walk && Run
        if (Input.GetKey(KeyCode.LeftShift)) PlayerMovement.Instance.Run();
        if (Input.GetKeyUp(KeyCode.LeftShift)) PlayerMovement.Instance.Walk();
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
}
