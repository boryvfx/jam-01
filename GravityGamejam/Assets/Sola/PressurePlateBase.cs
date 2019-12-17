using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlateBase : MonoBehaviour
{
    public bool stay = false;

    protected int recWeight = 5;
    public float currentHeight = 0f;
    public float minHeight = -0.1f;
    public float moveSpeed = 0.005f;
    public float tickSpeed = 1f / 60f;
    public float nextUpdate;
    protected bool tick;

    private void Start()
    {
        nextUpdate = Time.time;
    }

    protected void FixedUpdate()
    {
        tick  = checkNextUpdate();
        if (!stay && currentHeight < 0 && tick)
        {
            currentHeight += moveSpeed;
            transform.parent.transform.position += Vector3.up * moveSpeed;
        }
    }

    protected bool checkNextUpdate()
    {
        if (Time.time >= nextUpdate)
        {
            nextUpdate = Time.time + tickSpeed;
            return true;
        }
        return false;
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
