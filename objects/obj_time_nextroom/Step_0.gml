if keyboard_check_pressed(vk_space) room_goto_next();

if frame_count > 0 && timed
{
	room_goto_next();
}
frame_count++;