using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
	public int weight = 15;
	public WEIGHT_STATE weightState;

	private Vector3 nextMovement;
	public int mediumThreshold = 35;
	public int heavyThreshold = 75;

	public float speed = 1.0f;
	public float jumpSpeed = 10.0f;
	public List<PickableItem> closeItems;

    internal void AddMovement(Vector3 vector3)
    {
        
    }

    public List<PickableItem> bag;

	public Transform itemDropPoint;
	[HideInInspector]
	public Rigidbody rb;

	private void Start()
	{
		closeItems = new List<PickableItem>();
		bag = new List<PickableItem>();
		rb = GetComponent<Rigidbody>();
	}

	// Update is called once per frame
	void Update()
	{
		//Move Left / Right
		if (Input.GetKey(KeyCode.A) || Input.GetKeyDown(KeyCode.Q))
		{
			rb.MovePosition(transform.position + Vector3.right * -speed * Time.deltaTime);
		}
		else if (Input.GetKey(KeyCode.D))
		{
			rb.MovePosition(transform.position + Vector3.right * speed * Time.deltaTime);
		}
		
		//Jump
		if (Input.GetKeyDown(KeyCode.Z) || Input.GetKeyDown(KeyCode.W) || Input.GetKeyDown(KeyCode.Space))
		{
			rb.velocity = Vector3.up * jumpSpeed;
		}

		//Pick Close Item
		if(Input.GetKeyDown(KeyCode.E))
		{
			PickableItem pickable = GetClosestItem();
			if(pickable != null)
			{
				weight += pickable.weight;
				closeItems.Remove(pickable);
				bag.Add(pickable);
				pickable.gameObject.SetActive(false);
			}
		}

		if (Input.GetKeyDown(KeyCode.R))
		{
			if(bag.Count != 0)
			{
				PickableItem pickable = bag[bag.Count - 1];
				weight -= pickable.weight;
				pickable.transform.position = itemDropPoint.position;
				pickable.gameObject.SetActive(true);
				pickable.rb.AddForce((Vector3.up*3 + Vector3.right * (UnityEngine.Random.value - 0.5f) * 2) * UnityEngine.Random.value * 5.0f, ForceMode.Impulse);
				bag.Remove(pickable);
			}
		}
	}

	protected void CheckWeightState()
	{
		if (weight > heavyThreshold) weightState = WEIGHT_STATE.HEAVY;
		else if (weight > mediumThreshold) weightState = WEIGHT_STATE.MEDIUM;
		else weightState = WEIGHT_STATE.LIGHT;
	}

	protected PickableItem GetClosestItem()
	{
		float minDistance = 5.0f;
		PickableItem closestItem = null;
		if (closeItems.Count != 0)
		{
			foreach (PickableItem item in closeItems)
			{
				Vector3 iPos = item.transform.position;
				float distance = Vector3.Distance(transform.position, iPos);
				if (distance < minDistance)
				{
					closestItem = item;
					minDistance = distance;
				}
			}
			return closestItem;
		}
		else return null;
	}

	//For item detection
	private void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Pickable")
		{
			PickableItem pickable = other.GetComponent<PickableItem>();
			if (pickable != null && other.gameObject.activeSelf)
			{
				closeItems.Add(pickable);
			}
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.tag == "Pickable")
		{
			PickableItem pickable = other.GetComponent<PickableItem>();
			if (pickable != null && other.gameObject.activeSelf)
			{
				closeItems.Remove(pickable);
			}
		}
	}
}

public enum WEIGHT_STATE
{
	LIGHT,
	MEDIUM,
	HEAVY
}