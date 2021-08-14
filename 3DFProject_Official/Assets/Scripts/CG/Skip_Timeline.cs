using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class Skip_Timeline : MonoBehaviour
{
    private PlayableDirector _currentDirector;
    [SerializeField]private bool _sceneSkipped = true;
    private float _timeToSkipTo;
    [SerializeField] private GameObject Skip_UI;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !_sceneSkipped)
        {
            Skip_UI.GetComponent<Animator>().SetTrigger("Out");
            _currentDirector.time = _timeToSkipTo;
            _sceneSkipped = true;
        }
    }
     
    public void GetDirector(PlayableDirector director)
    {
        _sceneSkipped = false;
        _currentDirector = director;
    }

    public void GetSkipTime(float skipTime)
    {
        _timeToSkipTo = skipTime;
        Skip_UI.GetComponent<Animator>().SetTrigger("In");
    }

    
}
