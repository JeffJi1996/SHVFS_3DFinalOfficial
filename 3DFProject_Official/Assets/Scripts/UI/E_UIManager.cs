using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class E_UIManager : Singleton<E_UIManager>
{
    private ObjectPool interactUIPool;
    private Dictionary<GameObject, InteractUI> targetToActiveUI;
    void Start()
    {
        interactUIPool = GetComponent<ObjectPool>();
        targetToActiveUI = new Dictionary<GameObject, InteractUI>();
    }

    public GameObject GetUI(GameObject target)
    {
        var UIGameObject = interactUIPool.GetObject();
        UIGameObject.GetComponent<InteractUI>().SetTarget(target);

        if (!targetToActiveUI.ContainsKey(target))
        {
            targetToActiveUI.Add(target, UIGameObject.GetComponent<InteractUI>());
        }

        return UIGameObject;
    }

    public void ReturnUI(GameObject target)
    {
        if (targetToActiveUI.ContainsKey(target))
        {
            var returnObject = targetToActiveUI[target].gameObject;
            if (returnObject.GetComponent<Image>() != null)
            {
                returnObject.GetComponent<Image>().enabled = true;
            }
            interactUIPool.ReturnObject(returnObject);
            targetToActiveUI.Remove(target);
        }
    }

    public void ChangeUI(bool isActive, GameObject target)
    {
        if (targetToActiveUI.ContainsKey(target))
        {
            var UI = targetToActiveUI[target];
            UI.ChangeSprite(isActive);
        }
    }

    public void UIHide(GameObject target)
    {
        if (targetToActiveUI.ContainsKey(target))
        {
            var UI = targetToActiveUI[target];
            if (UI.GetComponent<Image>() != null)
            {
                UI.GetComponent<Image>().enabled = false;
            }
        }
    }
    public void UIShow(GameObject target)
    {
        if (targetToActiveUI.ContainsKey(target))
        {
            var UI = targetToActiveUI[target];
            if (UI.GetComponent<Image>() != null)
            {
                UI.GetComponent<Image>().enabled = true;
            }
        }
    }
}
