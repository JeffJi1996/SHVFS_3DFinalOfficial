using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PostEffects : PostEffectsBase
{
    [Range(0, 16)]
    public int times = 1;
    private List<int> BlurLists = new List<int>();

    private bool StartBlur;
    private bool doOnce;
    void Start()
    {
        Check();
        StartBlur = false;
        doOnce = true;

    }

    void Update()
    {
        if (StartBlur)
        {
            if (doOnce)
            {
              times = 16;
              doOnce = false;
            }
            if (BlurLists.Count >= 2)
            {
                if (times == 0)
                {
                    StartBlur = false;
                    doOnce = true;
                }
                BlurLists.Clear();
                times--;
            }
            BlurLists.Add(1);
        }
    }

    public void Screen_Blur()
    {
        StartBlur = true;
    }
    void OnRenderImage(RenderTexture src, RenderTexture des)
    {
        if (effect_enable)
        {
            RenderTexture tmp1 = new RenderTexture(src.width, src.height, src.depth);
            RenderTexture tmp2 = new RenderTexture(src.width, src.height, src.depth);

            Graphics.Blit(src, tmp1);
            for (int i = 0; i < times; i++)
            {
                Graphics.Blit(tmp1, tmp2, material);
                Graphics.Blit(tmp2, tmp1);
            }

            Graphics.Blit(tmp1, des);

            tmp1.Release();
            tmp2.Release();
        }
        else
        {
            Graphics.Blit(src, des);
        }
    }
}
