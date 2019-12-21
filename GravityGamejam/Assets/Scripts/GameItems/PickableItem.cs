using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : MonoBehaviour
{
	public string itemName = "Item";
	public ITEM_RARITY itemRarity = ITEM_RARITY.VERT;
	public int weight = 0;
	public Texture2D image;

	public float hoverHeight = 0.2f;
	protected Ray heightRay;
	
	protected Vector3 velocity;
	protected float hDrag = .95f;
	protected float g = 5f;
	[SerializeField]
	protected bool onGround = false;
	
	private void Start()
	{
		velocity = new Vector3();
		if (gameObject.tag != "Pickable") Debug.LogWarning("The gameobject : " + gameObject.name + " isn't tagged as Pickable, if you want to pick up this item in game you might want to tag it as 'Pickable'", gameObject);
	}

	private void OnDrawGizmos()
	{
		heightRay = new Ray(transform.position, Vector3.down);
		Vector3 pos = transform.position;
		Gizmos.color = Color.red;
		Gizmos.DrawRay(heightRay);
	}

	private void Update()
	{
		heightRay = new Ray(transform.position, Vector3.down);

		if (!onGround) {
			velocity.y += -g / 1000.0f;
			if (velocity.y < -1.0f) velocity.y = -1.0f;

			velocity.x *= hDrag;
			if (velocity.x < 0.01f && velocity.x > 0.01f) velocity.x = 0;

			transform.position += velocity;

			if (Physics.Raycast(heightRay, out RaycastHit hitInfo, hoverHeight))
			{
				if(hitInfo.collider.tag == "Ground")
				{
					transform.position = hitInfo.point + (Vector3.up * hoverHeight);
					velocity = new Vector3();
					onGround = true;
				}
			}
		}
	}

	public void SetVelocity(Vector3 newVelocity)
	{
		velocity = newVelocity;
		onGround = false;
	}
}

public enum ITEM_RARITY
{
	VERT,
	BLEU,
	VIOLET,
	JAUNE
}
