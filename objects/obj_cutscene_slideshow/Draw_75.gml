if frameCount < fadeTime
{
	opacity = lerp(opacity, 1, frameCount/fadeTime);
}

if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("F")) 
{
	cutsceneFrame++;
	frameCount = 0;	
	opacity = 0;
}
if cutsceneFrame > sprite_get_number(cutscene) - 1 room_goto_next();
draw_sprite_ext(cutscene, cutsceneFrame, 0, 0, RESOLUTION_W/cutsceneWidth, RESOLUTION_W/cutsceneWidth, 0, c_white, opacity);
frameCount++;