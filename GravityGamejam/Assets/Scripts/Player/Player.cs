using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
	[HideInInspector]
	public WEIGHT_STATE weightState = WEIGHT_STATE.LIGHT;
	
	protected float speed = 0;
	protected float jumpSpeed = 0;
	
	protected bool isJumping = false;

	public Animator animator;

	public GameObject playerRenderer;

	public GameObject lightBag;
	public GameObject mediumBag;
	public GameObject heavyBag;

	public Transform fxGetPoint;

	public GameObject fxPickUp;

	protected float rightAngle = 105.0f;
	protected float leftAngle = 255.0f;

	[HideInInspector]
	public List<PickableItem> closeItems;

	[HideInInspector]
	public List<PickableItem> bag;

	protected BoxCollider ownCollider;

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

	private void Start()
	{
		if (animator == null) Debug.LogAssertion("ANIMATOR IN PLAYER IS NULL");
		closeItems = new List<PickableItem>();
		bag = new List<PickableItem>();
		rb = GetComponent<Rigidbody>();
		ownCollider = GetComponent<BoxCollider>();
		CheckWeightState();
	}

	public int GetScore()
	{
		int score = 0;
		foreach (PickableItem item in bag)
		{
			switch (item.itemRarity)
			{
				case ITEM_RARITY.VERT:
					score += 2;
					break;
				case ITEM_RARITY.BLEU:
					score += 5;
					break;
				case ITEM_RARITY.VIOLET:
					score += 11;
					break;
				case ITEM_RARITY.JAUNE:
					score += 25;
					break;
				case ITEM_RARITY.ROUGE:
					score += 0;
					break;
				default:
					break;
			}
		}
		return score;
	}

	protected void SetSize(WEIGHT_STATE weightState)
	{
		switch (weightState)
		{
			case WEIGHT_STATE.LIGHT:
				ownCollider.center = lightCenter;
				ownCollider.size = lightSize;
				speed = lightSpeed;
				jumpSpeed = lightJumpSpeed;
				lightBag.SetActive(true);
				mediumBag.SetActive(false);
				heavyBag.SetActive(false);
				break;
			case WEIGHT_STATE.MEDIUM:
				ownCollider.center = mediumCenter;
				ownCollider.size = mediumSize;
				speed = mediumSpeed;
				jumpSpeed = mediumJumpSpeed;
				lightBag.SetActive(false);
				mediumBag.SetActive(true);
				heavyBag.SetActive(false);
				break;
			case WEIGHT_STATE.HEAVY:
				ownCollider.center = heavyCenter;
				ownCollider.size = heavySize;
				speed = heavySpeed;
				jumpSpeed = heavyJumpSpeed;
				lightBag.SetActive(false);
				mediumBag.SetActive(false);
				heavyBag.SetActive(true);
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
			playerRenderer.transform.rotation = Quaternion.Euler(new Vector3(0, leftAngle, 0));
			lightBag.transform.localScale = new Vector3(-0.01f,0.01f,0.01f);
			mediumBag.transform.localScale = new Vector3(-0.01f, 0.01f, 0.01f);
			heavyBag.transform.localScale = new Vector3(-0.01f, 0.01f, 0.01f);
			if (!isJumping) animator.Play("Run");
		}
		else if (Input.GetKey(KeyCode.D))
		{
			rb.MovePosition(transform.position + Vector3.right * speed * Time.deltaTime);
			playerRenderer.transform.rotation = Quaternion.Euler(new Vector3(0, rightAngle, 0));
			lightBag.transform.localScale = new Vector3(0.01f, 0.01f, 0.01f);
			mediumBag.transform.localScale = new Vector3(0.01f, 0.01f, 0.01f);
			heavyBag.transform.localScale = new Vector3(0.01f, 0.01f, 0.01f);
			if (!isJumping) animator.Play("Run");
		}
		else
		{
			if (!isJumping) animator.Play("Idle");
		}

		//Jump
		if (Physics.Raycast(transform.position, Vector3.down, 1.5f))
		{
			isJumping = false;
		}
		else
		{
			isJumping = true;
		}

		if(isJumping)
		{
			animator.Play("Landing");
		}

		if (!isJumping && (Input.GetKeyDown(KeyCode.Z) || Input.GetKeyDown(KeyCode.W) || Input.GetKeyDown(KeyCode.Space)))
		{
			rb.velocity = Vector3.up * jumpSpeed;
			animator.Play("Jump");
			isJumping = true;
		}

		//Pick Close Item
		if(Input.GetMouseButtonDown(0))
		{
			PickableItem pickable = GetClosestItem();
			if(pickable != null)
			{
				weight += pickable.weight;
				closeItems.Remove(pickable);
				bag.Add(pickable);
				Destroy(Instantiate(fxPickUp, pickable.gameObject.transform.position, Quaternion.identity), 2.0f);
				pickable.gameObject.SetActive(false);
				GameObject fxGet = Instantiate(pickable.pickupFX[pickable.randomID], fxGetPoint);
				fxGet.transform.position += new Vector3(Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f), 0);
				Destroy(fxGet, 1.0f);
				CheckWeightState();
			}
		}

		if (Input.GetMouseButtonDown(1))
		{
			if(bag.Count != 0)
			{
				PickableItem pickable = bag[bag.Count - 1];
				weight -= pickable.weight;
				pickable.gameObject.transform.position = itemDropPoint.position;
				pickable.gameObject.SetActive(true);
				pickable.SetVelocity(Vector3.up * Random.Range(.1f, .2f) + Vector3.right * Random.Range(-.1f,.1f));
				bag.Remove(pickable);
				CheckWeightState();
			}
		}
	}

	private void OnDrawGizmos()
	{
		Gizmos.DrawRay(transform.position, Vector3.down * 1);
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