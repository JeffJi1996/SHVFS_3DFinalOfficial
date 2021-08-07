using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CPManager : Singleton<CPManager>
{
    public List<ICheckPointObserver> checkPointObservers = new List<ICheckPointObserver>();

    public void AddObserver(ICheckPointObserver observer)
    {
        checkPointObservers.Add(observer);
    }

    public void ClearList()
    {
        checkPointObservers.Clear();
    }

    public void Initialize()
    {
        foreach (var observer in checkPointObservers)
        {
            observer.CheckPoint();
        }
    }
}
