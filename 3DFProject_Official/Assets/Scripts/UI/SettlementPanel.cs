using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using Unity.VisualScripting;
using UnityEditor;

public class SettlementPanel : Singleton<SettlementPanel>
{
    [SerializeField] private GameObject settlementPanel;
    [SerializeField] private Text timeText;
    [SerializeField] private Text scoreText;
    [SerializeField] private Text timeBonusText;
    [SerializeField] private Text lifeBonusText;
    [SerializeField] private Button playAgainButton;
    [SerializeField] private Button exitButton;
    [SerializeField] private int passScore = 100000;
    [SerializeField] private int maxTime = 720;
    [SerializeField] private int timeBonusScore = 138;
    [SerializeField] private int lifeBonusScore = 1000;
    [SerializeField] private float settleTime = 2;
    private float timeTimer = 0f;
    private int timeBonus;
    private int lifeBonus;
    private int minute = 0;
    private int second = 0;

    private bool isTimePause;

    private Color button1Color;
    private Color button1TextColor;
    private Color button2Color;
    private Color button2TextColor;

    private void Start()
    {
        playAgainButton.gameObject.SetActive(false);
        exitButton.gameObject.SetActive(false);
        settlementPanel.SetActive(false);
        button1Color = playAgainButton.GetComponent<Image>().color;
        button1TextColor = playAgainButton.transform.GetChild(0).GetComponent<Image>().color;
        button2Color = playAgainButton.GetComponent<Image>().color;
        button2TextColor = exitButton.transform.GetChild(0).GetComponent<Image>().color;
    }

    private void Update()
    {
        if (!isTimePause)
        {
            timeTimer += Time.deltaTime;
            minute = (int) (timeTimer / 60);
            second = (int) (timeTimer - minute * 60);
            timeText.text = string.Format("{0:D2}:{1:D2}", minute, second);
        }
        
    }

    public void SetTimerPause()
    {
        isTimePause = true;
    }

    public void SetTimerResume()
    {
        isTimePause = false;
    }

    public void Settlement()
    {
        SetTimerPause();
        settlementPanel.SetActive(true);
        timeBonus = Mathf.Max(maxTime - (int) timeTimer, 0) * timeBonusScore;
        lifeBonus = PlayerHealth.Instance.GetPlayerHealth() * lifeBonusScore;
        scoreText.text = passScore.ToString();
        timeBonusText.text = timeBonus.ToString();
        lifeBonusText.text = lifeBonus.ToString();
        StartCoroutine(SettlementWait());
    }

    IEnumerator SettlementWait()
    {
        yield return new WaitForSeconds(1f);
        if (timeBonus == 0)
        {
            if (lifeBonus == 0)
            {
                StartCoroutine(SetButton());
            }
            else
            {
                StartCoroutine(SetLifeBonus());
            }
        }
        else
        {
            StartCoroutine(SetTimeBonus());
        }
    }
    
    IEnumerator SetTimeBonus()
    {
        int targetScore = passScore + timeBonus;
        int tempScore = passScore;
        int tempTimeScore = timeBonus;
        float timer = 0;
        while (timer <= settleTime)
        {
            timer += Time.deltaTime;
            passScore = tempScore + (int)((targetScore - tempScore) * Mathf.Sin((float)(Math.PI/2 * (timer / settleTime))));
            timeBonus = tempTimeScore + (int)(-tempTimeScore * Mathf.Sin((float)(Math.PI/2 * (timer / settleTime))));
            scoreText.text = passScore.ToString();
            timeBonusText.text = timeBonus.ToString();
            yield return null;
        }
        yield return new WaitForFixedUpdate();
        timeBonusText.text = "0";
        if (lifeBonus == 0)
        {
            StartCoroutine(SetButton());
        }
        else
        {
            StartCoroutine(SetLifeBonus());
        }
    }
    
    IEnumerator SetLifeBonus()
    {
        int targetScore = passScore + lifeBonus;
        int tempScore = passScore;
        int tempLifeScore = lifeBonus;
        float timer = 0;
        while (timer <= settleTime)
        {
            timer += Time.deltaTime;
            passScore = tempScore + (int)((targetScore - tempScore) * Mathf.Sin((float)(Math.PI/2 * (timer / settleTime))));
            lifeBonus = tempLifeScore + (int)(-tempLifeScore * Mathf.Sin((float)(Math.PI/2 * (timer / settleTime))));
            scoreText.text = passScore.ToString();
            lifeBonusText.text = lifeBonus.ToString();
            yield return null;
        }
        yield return new WaitForFixedUpdate();
        lifeBonusText.text = "0";
        StartCoroutine(SetButton());
    }

    IEnumerator SetButton()
    {
        playAgainButton.gameObject.SetActive(true);
        exitButton.gameObject.SetActive(true);
        float timer = 0;
        while (timer <= 1f)
        {
            timer += Time.deltaTime;
            button1Color = new Color(1,1,1,timer/1f);
            button1TextColor = new Color(0.196f,0.196f,0.196f,timer/1f);
            button2Color = new Color(1,1,1,timer/1f);
            button2TextColor = new Color(0.196f,0.196f,0.196f,timer/1f);
            yield return null;
        }
        yield return new WaitForFixedUpdate();
        Cursor.lockState = CursorLockMode.None;
    }
}
