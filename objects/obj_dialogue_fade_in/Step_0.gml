if instance_exists(object)
{
	if object.image_alpha < 1
		object.image_alpha += rate;
	else
		task_done = true;
}

if task_done 
{
	if instance_exists(obj_parent_queue)
	{
		with obj_parent_queue ticket--;	
	}
	else {
		PLAYER_OBJ.move_freeze = false;	
		camera_reset();
	}
	instance_destroy();
}