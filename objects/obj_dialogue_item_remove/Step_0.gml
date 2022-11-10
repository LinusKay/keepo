if inventory_find_name(itemName) 
{
	inventory_remove_item(itemName);
	PLAYER_OBJ.holding_item = false;
	PLAYER_OBJ.held_item = [];
}
if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();