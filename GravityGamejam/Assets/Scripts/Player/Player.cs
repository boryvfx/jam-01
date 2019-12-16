using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
	public int weight = 15;

	public float speed = 1.0f;
	public float jumpSpeed = 10.0f;

	public List<PickableItem> closeItems;
	public List<PickableItem> bag;

	public Transform itemDropPoint;

	protected Rigidbody rb;

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
				pickable.rb.AddForce((Vector3.up*3 + Vector3.right * (Random.value - 0.5f) * 2) * Random.value * 5.0f, ForceMode.Impulse);
				bag.Remove(pickable);
			}
		}
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
			if (other.GetComponent<PickableItem>() != null && other.gameObject.activeSelf)
			{
				closeItems.Add(other.GetComponent<PickableItem>());
				Debug.Log("Item Added || array count = " + closeItems.Count);
			}
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.tag == "Pickable")
		{
			if (other.GetComponent<PickableItem>() != null && other.gameObject.activeSelf)
			{
				closeItems.Remove(other.GetComponent<PickableItem>());
				Debug.Log("Item Removed || array count = " + closeItems.Count);
			}
		}
	}
}
