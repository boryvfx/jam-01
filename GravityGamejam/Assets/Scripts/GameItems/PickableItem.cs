using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : MonoBehaviour
{
	[HideInInspector]
	public Rigidbody rb;

	public string itemName = "Item";
	public int weight = 0;

	private void Start()
	{
		if (gameObject.tag != "Pickable") Debug.LogWarning("The gameobject : " + gameObject.name + " isn't tagged as Pickable, if you want to pick up this item in game you might want to tag it as 'Pickable'", gameObject);
		rb = GetComponent<Rigidbody>();
	}
}
