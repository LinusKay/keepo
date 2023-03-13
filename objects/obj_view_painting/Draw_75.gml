PLAYER_OBJ.move_freeze = true;
scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, 0);


if frame_count % (60/sprite_get_speed(image)) == 0 { frame_index++; }

draw_sprite_ext(
	image, 
	frame_index, 
	RESOLUTION_W/2 - (sprite_get_width(image)*((y2 - y1 - inner_border*2)/sprite_get_height(image)))/2,
	y1 + inner_border, 
	(y2 - y1 - inner_border*2)/sprite_get_height(image), 
	(y2 - y1 - inner_border*2)/sprite_get_height(image), 
	0, c_white, 1
);

// close inventory window
if frame_count > 0 && (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("F")) || keyboard_check_pressed(vk_space)) {
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.window_open = false;
}
frame_count++;