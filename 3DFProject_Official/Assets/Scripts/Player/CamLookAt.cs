using UnityEngine;
using DG.Tweening;


public class CamLookAt : Singleton<CamLookAt>
{
    public void LookAt(Vector3 targetPosition, float duration, TweenCallback _action = null)
    {
        Tweener tweener = transform.DOLookAt(targetPosition, duration);
        tweener.OnComplete(_action);
    }

    public void LookDown(float rotateAngle,float duration, TweenCallback _action = null)
    {
        Tweener tweener = transform.DOLocalRotate(new Vector3(rotateAngle, transform.eulerAngles.y, 0), duration);
        tweener.OnComplete(_action);
    }

    public void CamReset()
    {
        transform.eulerAngles = Vector3.zero;
    }
}
