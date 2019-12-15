using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
	public float speed = 1.0f;
	public float jumpSpeed = 10.0f;

	protected Rigidbody rb;

	private void Start()
	{
		rb = GetComponent<Rigidbody>();
	}

	// Update is called once per frame
	void Update()
	{
		if (Input.GetKey(KeyCode.A) || Input.GetKeyDown(KeyCode.Q))
		{
			rb.MovePosition(transform.position + Vector3.right * -speed * Time.deltaTime);
		}
		else if (Input.GetKey(KeyCode.D))
		{
			rb.MovePosition(transform.position + Vector3.right * speed * Time.deltaTime);
		}
		
		if (Input.GetKeyDown(KeyCode.Z) || Input.GetKeyDown(KeyCode.W) || Input.GetKeyDown(KeyCode.Space))
		{
			rb.velocity = Vector3.up * jumpSpeed;
		}
	}
}
