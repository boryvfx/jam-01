using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PressurePlateDoor : PressurePlateBase
{
    public GameObject door;

    public float doorTriggerRemainingTime = 0;
    private float doorTriggerTime = 2f;
    public float doorTriggerMaxShift = 2f;
    public float doorTriggerMoveSpeed = 0.15f;
    private float doorCurrentHeight = 0f;

    private void FixedUpdate()
    {
        base.FixedUpdate();
        if (tick)
        {
            if (currentHeight <= minHeight)
            {
                doorTriggerRemainingTime = doorTriggerTime;
            }
            else if (doorTriggerRemainingTime > 0)
            {
                doorTriggerRemainingTime -= tickSpeed;
            }
            else if (doorTriggerRemainingTime <= 0 && doorCurrentHeight > 0)
            {
                doorCurrentHeight -= doorTriggerMoveSpeed;
                door.transform.position -= Vector3.up * doorTriggerMoveSpeed;
            }

            if (doorTriggerRemainingTime > 0 && doorCurrentHeight < doorTriggerMaxShift)
            {
                doorCurrentHeight += doorTriggerMoveSpeed;
                door.transform.position += Vector3.up * doorTriggerMoveSpeed;
            }

        }
    }
}
