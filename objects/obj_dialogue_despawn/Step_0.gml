instance_destroy(object);

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();