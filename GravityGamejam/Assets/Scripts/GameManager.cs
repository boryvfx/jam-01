using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
	public static Player MainPlayer;

	[SerializeField]
	protected Player mainPlayer;

    // Start is called before the first frame update
    void Start()
    {
		MainPlayer = mainPlayer;
    }

	public static void StopGame()
	{
		ScoreManager.SetScore(MainPlayer.GetScore());
		MainPlayer.StartCoroutine(LoadScoreScene());
	}

	public static IEnumerator LoadScoreScene()
	{
		yield return new WaitForSeconds(2.0f);
		SceneManager.LoadScene("ScoreScene");
	}
}
