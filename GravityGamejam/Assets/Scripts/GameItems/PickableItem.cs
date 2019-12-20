using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : MonoBehaviour
{
<<<<<<< .merge_file_a16468
	[HideInInspector]
	public Rigidbody rb;

	public string itemName = "Item";
	public Color itemColor = new Color();
	public int weight = 0;
	public float hoverHeight = .2f;

	protected Ray heightRay;
	
	protected Vector3 velocity;
	[Range(0.0f,1.0f)]
	protected float drag = 0.5f;


=======
	public string itemName = "Item";
	public ITEM_RARITY itemRarity = ITEM_RARITY.VERT;
	public int weight = 0;
	public Texture2D image;

	public float hoverHeight = .2f;
	protected Ray heightRay;
	
	protected Vector3 velocity;
	protected float hDrag = .5f;
	protected float g = 0.1f;
	
>>>>>>> .merge_file_a19468
	private void Start()
	{
		heightRay = new Ray(transform.position, Vector3.down);
		if (gameObject.tag != "Pickable") Debug.LogWarning("The gameobject : " + gameObject.name + " isn't tagged as Pickable, if you want to pick up this item in game you might want to tag it as 'Pickable'", gameObject);
<<<<<<< .merge_file_a16468
		rb = GetComponent<Rigidbody>();
=======
>>>>>>> .merge_file_a19468
	}

	private void OnDrawGizmos()
	{
		Vector3 pos = transform.position;
		Gizmos.color = Color.red;
		Gizmos.DrawLine(pos, pos + Vector3.down * hoverHeight);
	}

	private void Update()
	{
		if (Physics.Raycast(heightRay, out RaycastHit hitInfo, hoverHeight + 0.01f))
		{
			transform.position = hitInfo.point + Vector3.up * hoverHeight;
<<<<<<< .merge_file_a16468
		}
	}
}
=======
			velocity = new Vector3();
		}
		else
		{
			velocity.y += -g;
			velocity.x *= hDrag;
		}

		transform.position += velocity;
	}

	public void SetVelocity(Vector3 newVelocity)
	{
		velocity = newVelocity;
	}
}

public enum ITEM_RARITY
{
	VERT,
	BLEU,
	VIOLET,
	JAUNE
}
>>>>>>> .merge_file_a19468
