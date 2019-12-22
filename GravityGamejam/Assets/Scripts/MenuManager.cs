using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuManager : MonoBehaviour
{

	public string MainSceneName = "";
	public Animation creditsAnimation;
	protected bool inCredits = false;

	public void BtnCredits()
	{
		if (!inCredits)
		{
			creditsAnimation.Play("CreditsIn");
			inCredits = true;
		}
		else
		{
			creditsAnimation.Play("CreditsOut");
			inCredits = false;
		}
	}

	public void BtnPlay()
	{
		SceneManager.LoadScene(MainSceneName);
	}

	public void BtnQuit()
	{
		if (!inCredits) Application.Quit();
		else
		{
			creditsAnimation.Play("CreditsOut");
			inCredits = false;
		}
	}
}
