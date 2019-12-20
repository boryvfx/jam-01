using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickableItem : MonoBehaviour
{
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


	private void Start()
	{
		heightRay = new Ray(transform.position, Vector3.down);
		if (gameObject.tag != "Pickable") Debug.LogWarning("The gameobject : " + gameObject.name + " isn't tagged as Pickable, if you want to pick up this item in game you might want to tag it as 'Pickable'", gameObject);
		rb = GetComponent<Rigidbody>();
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
		}
	}
}
