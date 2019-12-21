using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Button : MonoBehaviour
{
	public Door[] linkedDoors;
	public Animation animComponent;

	public WEIGHT_STATE minimumWeight = WEIGHT_STATE.LIGHT;

	protected bool activated = false;

    // Start is called before the first frame update
    void Start()
    {
		if (linkedDoors.Length == 0) linkedDoors = new Door[0];
    }

	private void OnTriggerStay(Collider other)
	{
		if(other.tag == "Player")
		{
			if(GameManager.MainPlayer.weightState >= minimumWeight)
			{
				if (!activated)
				{
					animComponent.Play();
					activated = true;
				}
				foreach(Door door in linkedDoors)
				{
					door.isOpenning = true;
				}
			}
		}
	}
}
