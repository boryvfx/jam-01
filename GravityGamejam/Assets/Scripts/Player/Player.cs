﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{

	[HideInInspector]
	public WEIGHT_STATE weightState = WEIGHT_STATE.LIGHT;
	
	protected float speed = 0;
	protected float jumpSpeed = 0;

	[HideInInspector]
	public List<PickableItem> closeItems;

	[HideInInspector]
	public List<PickableItem> bag;

	protected BoxCollider collider;
	
	public int weight = 15;
	[Header("Size parameters")]
	public int mediumThreshold = 35;
	public int heavyThreshold = 75;
	[Space(10)]
	public float lightSpeed = 1.0f;
	public float lightJumpSpeed = 1.0f;
	public Vector3 lightSize = new Vector3(1, 1, 1);
	public Vector3 lightCenter = new Vector3(0, 0, 0);
	[Space(10)]
	public float mediumSpeed = 1.0f;
	public float mediumJumpSpeed = 1.0f;
	public Vector3 mediumSize = new Vector3(1,1.5f,1);
	public Vector3 mediumCenter = new Vector3(0,0.25f,0);
	[Space(10)]
	public float heavySpeed = 1.0f;
	public float heavyJumpSpeed = 1.0f;
	public Vector3 heavySize = new Vector3(1,2,1);
	public Vector3 heavyCenter = new Vector3(0,0.5f,0);

	[Header("Bag Parameters")]
	public Transform itemDropPoint;

	[HideInInspector]
	public Rigidbody rb;
	
	private Vector3 nextMovement;

	internal void AddMovement(Vector3 vector3)
	{

	}

	private void Start()
	{
		closeItems = new List<PickableItem>();
		bag = new List<PickableItem>();
		rb = GetComponent<Rigidbody>();
		collider = GetComponent<BoxCollider>();
		CheckWeightState();
	}

	protected void SetSize(WEIGHT_STATE weightState)
	{
		switch (weightState)
		{
			case WEIGHT_STATE.LIGHT:
				collider.center = lightCenter;
				collider.size = lightSize;
				speed = lightSpeed;
				jumpSpeed = lightJumpSpeed;
				break;
			case WEIGHT_STATE.MEDIUM:
				collider.center = mediumCenter;
				collider.size = mediumSize;
				speed = mediumSpeed;
				jumpSpeed = mediumJumpSpeed;
				break;
			case WEIGHT_STATE.HEAVY:
				collider.center = heavyCenter;
				collider.size = heavySize;
				speed = heavySpeed;
				jumpSpeed = heavyJumpSpeed;
				break;
			default:
				break;
		}
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
				CheckWeightState();
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
				CheckWeightState();
			}
		}
	}

	protected void CheckWeightState()
	{
		if (weight > heavyThreshold) weightState = WEIGHT_STATE.HEAVY;
		else if (weight > mediumThreshold) weightState = WEIGHT_STATE.MEDIUM;
		else weightState = WEIGHT_STATE.LIGHT;

		SetSize(weightState);
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