public class ScoreManager
{
	public static int highScore = 0;
	public static int score = 0;
	public static bool newHighScore = false;

	public static void SetScore(int pscore)
	{
		score = pscore;
		if (score > highScore)
		{
			newHighScore = true;
			highScore = score;
		}
	}
}
