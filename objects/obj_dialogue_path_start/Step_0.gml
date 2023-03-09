with (object) {
	print(path_position)
	if (path_index == -1) path_start(other.path, other.pathSpeed, other.pathEndAction, other.pathAbsolute)
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
