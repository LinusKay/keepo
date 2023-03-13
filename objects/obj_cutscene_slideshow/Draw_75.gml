if frame_count < fade_time
{
	opacity = lerp(opacity, 1, frame_count/fade_time);
}

if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("F")) 
{
	cutscene_frame++;
	frame_count = 0;	
	opacity = 0;
}
if cutscene_frame > sprite_get_number(cutscene) - 1 room_goto_next();
draw_sprite_ext(cutscene, cutscene_frame, 0, 0, RESOLUTION_W/cutscene_width, RESOLUTION_W/cutscene_width, 0, c_white, opacity);
frame_count++;