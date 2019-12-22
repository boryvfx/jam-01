using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class ScoreScene : MonoBehaviour
{
	public GameObject GG;
	public Text HS;
	public Text S;

	private void Start()
	{
		if (ScoreManager.newHighScore) GG.SetActive(true);
		HS.text = "HIGHSCORE = " + ScoreManager.highScore;
		S.text = "SCORE = " + ScoreManager.score;
	}

	private void Update()
	{
		if (Input.anyKeyDown)
		{
			SceneManager.LoadScene("Menu");
		}
	}
}
