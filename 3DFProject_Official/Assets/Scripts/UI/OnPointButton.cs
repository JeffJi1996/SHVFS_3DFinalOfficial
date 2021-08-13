using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class OnPointButton : MonoBehaviour,IPointerEnterHandler,IPointerExitHandler
{
    private Image image;
    void Awake()
    {
        image = GetComponent<Image>();
        image.enabled = false;
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        image.enabled = true;
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        image.enabled = false;
    }
}
