using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WindObject : MonoBehaviour
{
	public int maximumWeight = 35;
	public float upwardForce = 15.0f;

	private void OnTriggerStay(Collider other)
	{
		if (other.tag == "Player")
		{
			Debug.Log("up");
			if(!(GameManager.MainPlayer.weight > maximumWeight))
				GameManager.MainPlayer.rb.AddForce(Vector3.up * upwardForce);
		}
	}
}
