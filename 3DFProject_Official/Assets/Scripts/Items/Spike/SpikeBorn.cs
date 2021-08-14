using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

public class SpikeBorn : MonoBehaviour
{
    public bool isActive;
    private bool doOnce;
    public Vector3 initialPosition;

    [Header("Time")]
    [SerializeField] private float GoUpDuration;
    [SerializeField] private float GoDownDuration;
    [SerializeField] private float existTime;
    [SerializeField] private AudioSource audioUp;
    [SerializeField] private AudioSource audioDown;

    [Header("GoUpDistance")]
    [SerializeField] private float GoUpPosition;

    [Header("CountDown")]
    [SerializeField] private bool isCountingDown;
    private float activeTime;
    [SerializeField] private float nowTime;


    void Awake()
    {
        isActive = false;
        isCountingDown = false;
        doOnce = true;
        initialPosition = transform.localPosition;
        nowTime = activeTime;
    }

    void Update()
    {
        activeTime = SpikeManager.Instance.nowActiveDuration;

        if (isActive)
        {
            if (doOnce)
            {
                ActiveSpike();
                doOnce = false;
            }


        }

        if (isCountingDown)
        {
            nowTime -= Time.deltaTime;
            if (nowTime <= 0)
            {
                nowTime = activeTime;
                isActive = false;
                doOnce = true;
                isCountingDown = false;
            }
        }

    }

    public void ActiveSpike()
    {
        StartCoroutine(Puncture());
    }

    void GoUp()
    {
        LeanTween.moveLocalY(this.gameObject, GoUpPosition, GoUpDuration).setEaseInQuint();
        StartCoroutine(DelayPlay());
    }

    void GoDown()
    {
        LeanTween.moveLocalY(gameObject, initialPosition.y, GoDownDuration).setEaseInQuint().setOnComplete(ChangeState);
        audioDown.Play();
    }

    IEnumerator Puncture()
    {
        GoUp();
        yield return new WaitForSeconds(GoUpDuration + existTime);
        GoDown();
    }

    void ChangeState()
    {
        isCountingDown = true;

    }

    IEnumerator DelayPlay()
    {
        yield return new WaitForSeconds(0.7f);
        audioUp.Play();
    }


}
