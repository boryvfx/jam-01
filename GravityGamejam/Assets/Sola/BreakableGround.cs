using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BreakableGround : MonoBehaviour
{
    public bool stay = false;

    protected int recWeight = 5;
    protected int baseResistance = 50;
    public int currentLife = 0;
    public int currentWeight = 0;
    
    public float tickSpeed = 1f / 2f;
    public float nextUpdate;
    
    private void Start()
    {
        currentLife = baseResistance;
        nextUpdate = Time.time;
    }

    private bool checkNextUpdate()
    {
        if (Time.time >= nextUpdate)
        {
            Debug.Log("Tick");
            nextUpdate = Time.time + tickSpeed;
            return true;
        }
        return false;
    }

    private void FixedUpdate()
    {
        if (stay && checkNextUpdate())
        {
            Debug.Log("Losing life");
            currentLife -= currentWeight;
            if (currentLife <= 0)
                Destroy(transform.parent.gameObject);
        }


    }

    private void OnTriggerEnter(Collider other)
    {
        int weight = other.gameObject.GetComponent<Player>().weight;
        if (currentWeight + weight > recWeight)
        {
            currentWeight += weight;
            stay = true;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        int weight = other.gameObject.GetComponent<Player>().weight;
        currentWeight -= weight;
        stay = false;
    }
}
