using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGM : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        AudioManager.instance.Play("SFX_Amb_1stFloor");
        AudioManager.instance.Play("Music_Explore");
    }
}
