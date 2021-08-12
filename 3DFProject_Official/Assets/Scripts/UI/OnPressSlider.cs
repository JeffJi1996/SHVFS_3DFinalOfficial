using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class OnPressSlider : MonoBehaviour,IBeginDragHandler,IEndDragHandler
{
    [SerializeField] private Color changeColor;
    [SerializeField] private Image image;

    private Color color;
    
    public Action beginDrag { get; set; }
    public Action endDrag { get; set; }
    
    void Awake()
    {
        color = image.color;
        beginDrag = OnSliderBeginDrag;
        endDrag = OnSliderEndDrag;
    }

    public void OnBeginDrag(PointerEventData eventData)
    {
        beginDrag?.Invoke();
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        endDrag?.Invoke();
    }

    public void OnSliderBeginDrag()
    {
        image.color = changeColor;
    }

    public void OnSliderEndDrag()
    {
        image.color = color;
    }
}
