using UnityEngine;
using DG.Tweening;

public class PlayerMovement : Singleton<PlayerMovement>
{
    private float currentSpeed;
    [Header("Walk")]
    [SerializeField]private float walkSpeed;
    [SerializeField]private float walkSuperRate;
    [Header("Run")]
    [SerializeField] private float runSpeed;
    [SerializeField] private float runSuperRate;

    [Header("Rotate")]
    public float rotateDuration = 0.2f;
    void Start()
    {
       
        currentSpeed = walkSpeed;
    }
    public float GetCurrentMoveSpeed()
    {
        var speed = currentSpeed;
        return speed;
    }
    public void Run()
    {
        if (PlayerAbilityControl.Instance.isActiveAndEnabled)
        {
            if (PlayerAbilityControl.Instance.WhetherTransforming())
            {
                currentSpeed = runSpeed * runSuperRate;
            }
            else
            {
                currentSpeed = runSpeed;
            }
        }
    }
    public void Walk()
    {
        if (PlayerAbilityControl.Instance.WhetherTransforming())
        {
            currentSpeed = walkSpeed * walkSuperRate;
        }
        else
        {
            currentSpeed = walkSpeed;
        }
    }
    public void Rotate180()
    {
        Quaternion Turn180Degree = Quaternion.Euler(transform.localEulerAngles + new Vector3(0, 180, 0));
        transform.DOLocalRotateQuaternion(Turn180Degree, rotateDuration);
    }

}
