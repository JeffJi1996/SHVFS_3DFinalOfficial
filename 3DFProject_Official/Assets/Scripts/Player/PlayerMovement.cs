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
        currentSpeed = runSpeed;
    }

    public void Walk()
    {
        currentSpeed = walkSpeed;
    }

    public void Rotate180()
    {
        Quaternion Turn180Degree = Quaternion.Euler(transform.localEulerAngles + new Vector3(0, 180, 0));
        transform.DOLocalRotateQuaternion(Turn180Degree, rotateDuration);
    }

}
