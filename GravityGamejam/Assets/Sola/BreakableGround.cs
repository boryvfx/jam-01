using UnityEngine;

public class BreakableGround : Eventick
{
    public bool stay = false;

    protected int recWeight = 15;
    protected int baseResistance = 50;
    public int currentLife = 0;
    public int currentWeight = 0;

    private void Start()
    {
        tickSpeed = 1f / 2f;
        currentLife = baseResistance;
        nextUpdate = Time.time;
    }

    protected override void FixedUpdateInherited()
    {
        if (tick && stay)
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
