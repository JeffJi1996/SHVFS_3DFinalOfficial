using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WebPanel : Singleton<WebPanel>
{
    [SerializeField]private GameObject webPanel;
    private Animator anim;

    void Start()
    {
        anim = webPanel.GetComponent<Animator>();
    }
    public void StartWebVFX()
    {
        anim.SetTrigger("Web_Start");
    }

}
