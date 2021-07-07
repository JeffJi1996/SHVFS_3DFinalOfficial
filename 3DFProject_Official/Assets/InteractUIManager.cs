using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InteractUIManager : Singleton<InteractUIManager>
{
    private ObjectPool interactUIPool;
    private Dictionary<GameObject, EButtonUI> targetToActiveUI;
    void Start()
    {
        interactUIPool = GetComponent<ObjectPool>();
        targetToActiveUI = new Dictionary<GameObject, EButtonUI>();
    }

    public GameObject GetUI(GameObject target)
    {
        var UIGameObject = interactUIPool.GetObject();
        UIGameObject.GetComponent<EButtonUI>().SetTarget(target);

        if (!targetToActiveUI.ContainsKey(target))
        {
            targetToActiveUI.Add(target, UIGameObject.GetComponent<EButtonUI>());
        }

        return UIGameObject;
    }

    public void ReturnUI(GameObject target)
    {
        if (targetToActiveUI.ContainsKey(target))
        {
            var returnObject = targetToActiveUI[target].gameObject;
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

}
