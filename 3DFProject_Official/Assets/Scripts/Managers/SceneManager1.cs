using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneManager1 : Singleton<SceneManager1>
{
   protected override void Awake()
   {
      base.Awake();
     // DontDestroyOnLoad(this);
   }

   public void NextScene()
   {
      UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex + 1);
   }

   public void QuitGame()
   {
      Application.Quit();
   }
}
