with (object) {
	print(path_position)
	if (path_index == -1) path_start(other.path, other.path_speed, other.path_end_action, other.path_absolute)
	if(path_position == 1) {
		if instance_exists(obj_parent_queue)
		{
			with obj_parent_queue ticket--;	
		}
		else {
			PLAYER_OBJ.move_freeze = false;	
			path_delete(other.path)
			camera_reset();
		}
		instance_destroy(other)
	}
}
