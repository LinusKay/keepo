if place_meeting(x, y, PLAYER_OBJ) && !instance_exists(obj_warp) {
	var inst = instance_create_depth(0, 0, -9999, obj_warp);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	//audio_play_sound(snd_sweep, 8, 0);
	play_sfx(snd_sweep);
	PLAYER_OBJ.move_freeze = true;
}