using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : Singleton<GameManager>
{
    public List<IEndGameObserver> endGameObservers = new List<IEndGameObserver>();
    public List<IEndGameObserver> cgObservers = new List<IEndGameObserver>();
    public GameObject player;
    public int mouseSensitivity = 100;
    public bool isBossState;

    [SerializeField] private GameObject bloodFx;

    private bool isBloodActive;
    // Start is called before the first frame update
    protected override void Awake()
    {
        base.Awake();
        player = GameObject.Find("Player");
        isBossState = false;
        DontDestroyOnLoad(this);
        
        bloodFx.SetActive(false);
    }

    private void Update()
    {
        if (PlayerMovement.Instance != null)
            player = PlayerMovement.Instance.gameObject;
    }

    public void AddObserver(IEndGameObserver observer)
    {
        endGameObservers.Add(observer);
    }

    public void RemoveObserver(IEndGameObserver observer)
    {
        endGameObservers.Remove(observer);
    }

    public void AddCGObserver(IEndGameObserver observer)
    {
        cgObservers.Add(observer);
    }
    
    public void RemoveCGObserver(IEndGameObserver observer)
    {
        cgObservers.Remove(observer);
    }
    public void NotifyObservers()
    {
        foreach (var observer in endGameObservers)
        {
            observer.EndNotify();
        }
    }

    public void CGTime()
    {
        Debug.Log(cgObservers.Count);
        foreach (var observer in cgObservers)
        {
            observer.CGTime();
        }
    }

    public void EndCG()
    {
        foreach (var observer in cgObservers)
        {
            observer.EndCG();
        }
    }

    public void PlayBloodFx(Transform hitTrans)
    {
        if (!isBloodActive)
        {
            isBloodActive = true;
            bloodFx.transform.position = hitTrans.position;
            bloodFx.transform.forward = (player.transform.position - hitTrans.position).normalized;
            bloodFx.SetActive(false);
            StartCoroutine(CloseBloodFx());
        }
    }

    IEnumerator CloseBloodFx()
    {
        yield return new WaitForSeconds(1f);
        bloodFx.SetActive(true);
        isBloodActive = false;
    }
}
