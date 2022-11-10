
teleport_key = keyboard_check_pressed(ord("F"));

if place_meeting(x, y, PLAYER_OBJ) 
{
	if teleport_key && !instance_exists(obj_warp) && targetRoom != 0
	{
		var inst = instance_create_depth(0, 0, -9999, obj_warp);
		inst.target_x = targetX;
		inst.target_y = targetY;
		inst.target_rm = targetRoom;
		audio_play_sound(snd_sweep, 8, 0);
		obj_keepo.move_freeze = true;
	}
}