using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectTrigger : MonoBehaviour
{
	public ITEM_RARITY rarityTrigger = ITEM_RARITY.ROUGE;
	public Door[] doorsLinked;

	private void OnTriggerEnter(Collider other)
	{
		if(other.tag == "Player")
		{
			if (GameManager.MainPlayer.bag.Count != 0)
			{
				foreach (PickableItem item in GameManager.MainPlayer.bag)
				{
					if(item.itemRarity == rarityTrigger)
					{
						foreach (Door door in doorsLinked)
						{
							door.isOpenning = true;
						}
						break;
					}
				}
			}
		}
	}
}
