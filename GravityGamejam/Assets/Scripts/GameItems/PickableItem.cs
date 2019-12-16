using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : MonoBehaviour
{
	public GameObject Model;
	public Rigidbody rb;
	public string itemName = "Item";
	public int weight = 0;

	private void Start()
	{
		rb = GetComponent<Rigidbody>();
	}
}
