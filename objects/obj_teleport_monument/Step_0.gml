teleport_key = keyboard_check_pressed(ord("F"));
if place_meeting(x, y, PLAYER_OBJ) 
{
	if teleport_key && !instance_exists(obj_warp) && target_room != 0
	{
		if global.monument_teleport_unlocked {
			var inst = instance_create_depth(0, 0, -9999, obj_warp);
			inst.target_x = target_x;
			inst.target_y = target_y;
			inst.target_rm = target_room;
			audio_play_sound(snd_sweep, 8, 0);
			obj_keepo.move_freeze = true;
		}
		else {
			dialogue_responses("monument_teleport_locked")	
		}
	}
}
