using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EButtonUI : MonoBehaviour
{
    [SerializeField] private Transform target;

    [SerializeField] private Sprite Unactive;
    [SerializeField] private Sprite Active;

    [SerializeField] private Vector3 screenPosition;
    [SerializeField] private RectTransform canvasRectTransform;
    private Canvas canvas;
    private RectTransform rectTransform;

    private Image image;
    

    void Start()
    {
        image = GetComponent<Image>();
        canvas = FindObjectOfType<Canvas>();
        rectTransform = GetComponent<RectTransform>();
    }

    void Update()
    {
        screenPosition = Camera.main.WorldToScreenPoint(target.position);
        Vector2 localVector;
        RectTransformUtility.ScreenPointToLocalPointInRectangle(canvasRectTransform, screenPosition, Camera.main,out localVector);
        rectTransform.position = localVector;
    }

    void OnEnable()
    {

    }

    public void SetTarget(Transform settingTarget)
    {
        target = settingTarget;
    }



}
