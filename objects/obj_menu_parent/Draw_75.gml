// controls
draw_set_color(c_black)
key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_close = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("J"))

// draw menu box
scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, 0);

// draw menu title
draw_set_font(fnt_pixellari)
draw_text(x1 + border * 2, y1 + border, menu_title)
draw_set_font(fnt_pixellari_small)

// draw menu tabs
//draw_sprite_ext(spr_arrow_left,	0,	x1 + border,  y2 + 45, 7, 7, 0, c_white, 1);
//for(var i = 0; i < array_length(menu_list); i++) {
//	boxx1 = x1 + tab_width + ((tab_width + tab_space) * i)
//	boxy1 = y2 + border
//	boxx2 = boxx1 + tab_width
//	boxy2 = y2 + border + tab_width
//	scr_nineslice_box_stretch(spr_textbox, boxx1,  boxy1,  boxx2 , boxy2, 0);
//	if menu_item == i iconVariation = 1 else iconVariation = 2
//	draw_sprite_ext(menu_list[i][iconVariation], 0, boxx1, boxy1, 7, 7, 0, c_white, 1)
//}
//draw_sprite_ext(spr_arrow_right,0,	x1 + tab_width + ((tab_width + tab_space) * array_length(menu_list)), y2 + 45, 7, 7, 0, c_white, 1);


// swap between menus
if key_right
{
	menu_item++
	if menu_item > array_length(menu_list) - 1 menu_item = 0
	instance_create_depth(0, 0, 0, menu_list[menu_item][0]);
	play_sfx(snd_rollover4);
	instance_destroy();	
}
// swap between menus
if key_left
{
	menu_item--
	if menu_item < 0 menu_item = array_length(menu_list) - 1
	instance_create_depth(0, 0, 0, menu_list[menu_item][0]);
	play_sfx(snd_rollover4, 0.8);
	instance_destroy();	
}

// close inventory window
if frame_count > 0 && key_close {
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.window_open = false;
}

frame_count++