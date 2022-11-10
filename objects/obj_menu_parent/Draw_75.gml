// controls
draw_set_color(c_black)
key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
key_close = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("J"))

// draw menu box
scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, 0);

// draw menu title
draw_set_font(fnt_pixellari)
draw_text(x1 + border * 2, y1 + border, menuTitle)
draw_set_font(fnt_pixellari_small)

// draw menu tabs
//draw_sprite_ext(spr_arrow_left,	0,	x1 + border,  y2 + 45, 7, 7, 0, c_white, 1);
//for(var i = 0; i < array_length(menuList); i++) {
//	boxx1 = x1 + tabWidth + ((tabWidth + tabSpace) * i)
//	boxy1 = y2 + border
//	boxx2 = boxx1 + tabWidth
//	boxy2 = y2 + border + tabWidth
//	scr_nineslice_box_stretch(spr_textbox, boxx1,  boxy1,  boxx2 , boxy2, 0);
//	if menuItem == i iconVariation = 1 else iconVariation = 2
//	draw_sprite_ext(menuList[i][iconVariation], 0, boxx1, boxy1, 7, 7, 0, c_white, 1)
//}
//draw_sprite_ext(spr_arrow_right,0,	x1 + tabWidth + ((tabWidth + tabSpace) * array_length(menuList)), y2 + 45, 7, 7, 0, c_white, 1);


// swap between menus
if key_right
{
	menuItem++
	if menuItem > array_length(menuList) - 1 menuItem = 0
	instance_create_depth(0, 0, 0, menuList[menuItem][0]);
	play_sfx(snd_rollover4);
	instance_destroy();	
}
// swap between menus
if key_left
{
	menuItem--
	if menuItem < 0 menuItem = array_length(menuList) - 1
	instance_create_depth(0, 0, 0, menuList[menuItem][0]);
	play_sfx(snd_rollover4, 0.8);
	instance_destroy();	
}

// close inventory window
if frameCount > 0 && key_close {
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.windowOpen = false;
}

frameCount++