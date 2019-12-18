using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlateBase : Eventick
{
    public bool stay = false;

    protected int recWeight = 5;
    public float currentHeight = 0f;
    public float minHeight = -0.1f;
    public float moveSpeed = 0.005f;

    private void Start()
    {
        nextUpdate = Time.time;
    }

    protected override void FixedUpdateInherited()
    {
        if (!stay && currentHeight < 0 && tick)
        {
            currentHeight += moveSpeed;
            transform.parent.transform.position += Vector3.up * moveSpeed;
        }
    }

    protected void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<Player>().weight > recWeight)
        {
            stay = true;
        }

    }

    protected void OnTriggerStay(Collider other)
    {
        if (stay && tick && currentHeight > minHeight)
        {
            currentHeight -= moveSpeed;
            transform.parent.transform.position += Vector3.up * -moveSpeed;
        }
    }

    protected void OnTriggerExit(Collider other)
    {
        stay = false;
    }
}
