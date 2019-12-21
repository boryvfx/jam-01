using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Door : MonoBehaviour
{
	public bool isOpenning = false;
	public float openTime = 2.0f;
	public float offset = 3.0f;
	protected float progress = 0.0f;

	protected float ratio;

	protected Vector3 startPos;
	protected Vector3 endPos;

	private void Start()
	{
		ratio = 1.0f / (openTime * 60.0f);
		startPos = transform.position;
		endPos = transform.position + transform.up * offset;
	}

	// Update is called once per frame
	void Update()
    {
        if (isOpenning && progress < 1.0f)
		{
			transform.position = Vector3.Lerp(startPos, endPos, progress);
			progress += ratio;
			if (progress > 1.0f) progress = 1.0f;
		}
		else if(!isOpenning && progress > 0.0f)
		{
			transform.position = Vector3.Lerp(startPos, endPos, progress);
			progress -= ratio;
			if (progress < 0.0f) progress = 0.0f;
		}
    }
}
