using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;
using UnityEngine.SceneManagement;

public class Elevator : MonoBehaviour
{
    [SerializeField] private GameObject elevator_Mesh;
    [SerializeField] private GameObject lookAtPoint;
    [SerializeField] private GameObject Player;
    private void OnTriggerEnter(Collider other)
    {
        if (other.GetComponent<PlayerMovement>() != null)
        {
            Cursor.lockState = CursorLockMode.None;
            Player.GetComponentInChildren<MouseLook>().enabled = false;
            Player.GetComponent<PlayerInputSystem>().enabled = false;
            Player.GetComponent<Rigidbody>().velocity = new Vector3(0, 0, 0);
            PlayerAbilityControl.Instance.BackToHuman();
            UIManager.Instance.CloseTimePanel();
           LookAtDoor(lookAtPoint.transform.position,2f,CloseDoor);
        }
    }

    public void LookAtDoor(Vector3 targetPosition, float duration, TweenCallback _action = null)
    {
        Tweener tweener = Player.transform.DOLookAt(targetPosition, duration);
        tweener.OnComplete(_action);
    }

    public void CloseDoor()
    {
        elevator_Mesh.transform.DOLocalMoveX(0.525f, 2f).OnComplete(TransformToLevel2);
    }

    public void TransformToLevel2()
    {
        SceneManager.LoadScene(2);
    }
}
