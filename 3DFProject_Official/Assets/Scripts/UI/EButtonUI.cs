using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EButtonUI : MonoBehaviour
{
    [SerializeField] private GameObject target;

    [SerializeField] private Sprite Unactive;
    [SerializeField] private Sprite Active;

    private Vector2 screenPosition;
    private RectTransform rectTransform;

    private Image image;


    void Start()
    {
        image = GetComponent<Image>();
        rectTransform = GetComponent<RectTransform>();
    }

    void Update()
    {
        screenPosition = Camera.main.WorldToScreenPoint(target.transform.position);
        rectTransform.position = screenPosition;
    }

    public void SetTarget(GameObject settingTarget)
    {
        target = settingTarget;
    }

    public void ChangeSprite(bool isActive)
    {
        if (image != null)
        {
            if (isActive) image.sprite = Active;
            if (!isActive) image.sprite = Unactive;
        }
    }

}
