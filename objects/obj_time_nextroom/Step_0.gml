if keyboard_check_pressed(vk_space) room_goto_next();

if frameCount > 0 && timed
{
	room_goto_next();
}
frameCount++;