using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Breakable : MonoBehaviour
{
	public WEIGHT_STATE minimumWeight = WEIGHT_STATE.LIGHT;

	protected MeshRenderer mr;
	protected Material mat;

	[SerializeField]
	protected float life = 1.0f;

	protected bool useLight = false;
	public float lightBreakTime = 5.0f;
	protected bool useMedium = false;
	public float mediumBreakTime = 3.0f;
	protected bool useHeavy = false;
	public float heavyBreakTime = 1.0f;

	[SerializeField]
	protected float lightLoss;
	[SerializeField]
	protected float mediumLoss;
	[SerializeField]
	protected float heavyLoss;

	// Start is called before the first frame update
	void Start()
    {
		mr = GetComponent<MeshRenderer>();
		mat = mr.material;

		lightLoss = (life / lightBreakTime) * 0.02f;
		mediumLoss = (life / mediumBreakTime) * 0.02f;
		heavyLoss = (life / heavyBreakTime) * 0.02f;

		switch (minimumWeight)
		{
			case WEIGHT_STATE.LIGHT:
				useLight = true;
				useMedium = true;
				useHeavy = true;
				break;
			case WEIGHT_STATE.MEDIUM:
				useMedium = true;
				useHeavy = true;
				break;
			case WEIGHT_STATE.HEAVY:
				useHeavy = true;
				break;
			default:
				useHeavy = true;
				break;
		}
	}

	private void OnTriggerStay(Collider other)
	{
		Debug.Log(Time.deltaTime);
		if(other.tag == "Player")
		{
			if(GameManager.MainPlayer.weightState >= minimumWeight)
			{
				switch (GameManager.MainPlayer.weightState)
				{
					case WEIGHT_STATE.LIGHT:
						life -= lightLoss;
						break;
					case WEIGHT_STATE.MEDIUM:
						life -= mediumLoss;
						break;
					case WEIGHT_STATE.HEAVY:
						life -= heavyLoss;
						break;
					default:
						break;
				}
			}
		}
	}

	private void Update()
	{
		mat.SetFloat("_Break", life);
		if(life <= 0)
		{
			Destroy(gameObject);
		}
	}
}
