﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
	[Header("Camera Parameters")]
	public Transform targetFocus;

	[Range(0.0f,1.0f)]
	public float lerpPower = .5f;

	public float distance = 5.0f;

	public float verticalOffset = 1.0f;
	public float horizontalOffset = 2.0f;

	public float verticalAngle = 0.0f;
	public float horizontalAngle = 0.0f;

    // Update is called once per frame
    void LateUpdate()
    {
		Vector3 newCameraPos = Vector3.Lerp(transform.position, targetFocus.position + Vector3.forward * -distance + Vector3.right * horizontalOffset + Vector3.up * verticalOffset, .2f);
		transform.position = newCameraPos;
    }
}
