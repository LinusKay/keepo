inventory_add(item_name, item_description, item_cost, item_sprite, can_gift, false, loved_by, liked_by, disliked_by, hated_by);
if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();