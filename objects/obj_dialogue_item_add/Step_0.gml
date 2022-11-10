inventory_add(itemName, itemDescription, itemCost, itemSprite, canGift, false, lovedBy, likedBy, dislikedBy, hatedBy);
if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();