using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlate : MonoBehaviour
{
    public bool stay = false;

    protected int recWeight = 5;
    public float current_height = 0f;
    public float minHeight = -0.1f;
    public float moveSpeed = 0.005f;
    public float tickSpeed = 1f/60f;
    public float nextUpdate;
    private string last = " ";
    private void Start()
    {
        nextUpdate = Time.time;
    }

    private void FixedUpdate()
    {
        if (!stay && current_height < 0 && checkNextUpdate("up"))
        {
            current_height += moveSpeed;
            transform.parent.transform.position += Vector3.up * moveSpeed;
            transform.position -= Vector3.up * moveSpeed;
        }
    }

    private bool checkNextUpdate(string order)
    {
        if (last != order)    
        {
            last = order;
            Debug.Log(last);
        }
        if (Time.time >= nextUpdate)
        {
            nextUpdate = Time.time + tickSpeed;
            return true;
        }
        return false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<Player>().weight > recWeight)
        {
            stay = true;
        }

    }

    private void OnTriggerStay(Collider other)
    {
        if (stay && checkNextUpdate("down") && current_height > minHeight)
        {
            current_height -= moveSpeed;
            transform.parent.transform.position += Vector3.up * -moveSpeed;
            transform.position += Vector3.up * moveSpeed;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        stay = false;
    }
}
