using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
}
