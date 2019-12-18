using System.Collections;
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

	[Range(-90.0f,90.0f)]
	public float verticalAngle = 0.0f;
	[Range(-90.0f,90.0f)]
	public float horizontalAngle = 0.0f;

    // Update is called once per frame
    void Update()
    {
		Vector3 vOffset = Vector3.up * verticalOffset;
		Vector3 hOffset = Vector3.right * horizontalOffset;
		Vector3 dist = Vector3.forward * -distance;

		transform.position = targetFocus.position + dist + vOffset + hOffset;
    }
}
