PLAYER_OBJ.move_freeze = true;
scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, 0);


if frameCount % (60/sprite_get_speed(image)) == 0 { frameIndex++; }

draw_sprite_ext(
	image, 
	frameIndex, 
	RESOLUTION_W/2 - (sprite_get_width(image)*((y2 - y1 - innerBorder*2)/sprite_get_height(image)))/2,
	y1 + innerBorder, 
	(y2 - y1 - innerBorder*2)/sprite_get_height(image), 
	(y2 - y1 - innerBorder*2)/sprite_get_height(image), 
	0, c_white, 1
);

// close inventory window
if frameCount > 0 && (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("F")) || keyboard_check_pressed(vk_space)) {
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.windowOpen = false;
}
frameCount++;