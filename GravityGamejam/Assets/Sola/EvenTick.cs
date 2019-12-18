using UnityEngine;

public abstract class Eventick : MonoBehaviour
{
    protected float nextUpdate;
    protected float tickSpeed = 1f / 60f;
    protected bool tick;

    protected void FixedUpdate()
    {
        tick = CheckNextUpdate();
        if (tick)
        {
            FixedUpdateInherited();
        }
    }

    protected virtual void FixedUpdateInherited() { }

    protected bool CheckNextUpdate()
    {
        if (Time.time >= nextUpdate)
        {
            nextUpdate = Time.time + tickSpeed;
            return true;
        }
        return false;
    }
}
