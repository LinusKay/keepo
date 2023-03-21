if room == target_rm  {
	PLAYER_OBJ.x = target_x;
	PLAYER_OBJ.y = target_y;
	PLAYER_OBJ.image_alpha = 1;
	if image_index < 1 {
		instance_destroy();
		PLAYER_OBJ.move_freeze = false;
	}
}
else {
	PLAYER_OBJ.image_alpha -= 0.1;	
}