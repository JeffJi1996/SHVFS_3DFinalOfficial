using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameManager : Singleton<GameManager>
{

    List<IEndGameObserver> endGameObservers = new List<IEndGameObserver>();
    List<IEndGameObserver> cgObservers = new List<IEndGameObserver>();
    public GameObject player;

    public bool isBossState;
    // Start is called before the first frame update
    protected override void Awake()
    {
        base.Awake();
        player = GameObject.Find("Player");
        isBossState = false;
        DontDestroyOnLoad(this);
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
        Debug.Log("StopAI");
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
}
