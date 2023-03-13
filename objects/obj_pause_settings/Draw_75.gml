draw_set_font(fnt_pixellari_small);

var _bg = global.high_contrast
var _c
if global.high_contrast _c = c_white else _c = c_black

scr_nineslice_box_stretch(spr_textbox, inv_x1, inv_y1, inv_x2, inv_y2, _bg);


PLAYER_OBJ.move_freeze = true;

key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
item_selected += key_down - key_up;
if key_up play_sfx(snd_click4);
if key_down play_sfx(snd_click4, 0.8);

var _max = 7;
var _min = 0;
if item_selected > _max item_selected = _min;
if item_selected < _min item_selected = _max;

var _item = 0
// display settings options
if item_selected = _item { draw_text_colour(inv_x1 + border * 2, inv_y1 + border, " Resume", _c, _c, _c, _c, 1); }
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border, "Resume", _c, _c, _c, _c, 1); }

_item = 1
if item_selected = _item { 
	draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " Volume: " + string(floor(global.volume_music * 100)) + "%", _c, _c, _c, _c, 1); 
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if key_left || key_right {
		global.volume_music -= (key_left - key_right)/10;
		if global.volume_music < 0 {
			global.volume_music = 0;
		}
		if global.volume_music > 1 {
			global.volume_music = 1;	
		}
		audio_play_sound(snd_bark, 90, false);
		audio_sound_gain(snd_bark, global.volume_music, 0);
		audio_sound_pitch(snd_bark, random_range(0.8, 1.2))
	}
}
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "Volume: " + string(floor(global.volume_music * 100)) + "%", _c, _c, _c, _c, 1); }


// display resolution
_item = 2
if item_selected = _item { 
	draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " Window Size: " + string(global.window_sizes[global.window_size_selected][0]) + "x" + string(global.window_sizes[global.window_size_selected][1]), _c, _c, _c, _c, 1);
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if key_left || key_right {
		global.window_size_selected -= key_left - key_right;
		
		if global.window_size_selected < 0 global.window_size_selected = array_length(global.window_sizes) - 1;
		if global.window_size_selected > array_length(global.window_sizes) - 1 global.window_size_selected = 0;
		
		var ww = global.window_sizes[global.window_size_selected][0];
		var wh = global.window_sizes[global.window_size_selected][1];
		window_set_size(ww, wh);
	}
}
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "Window Size: " + string(global.window_sizes[global.window_size_selected][0]) + "x" + string(global.window_sizes[global.window_size_selected][1]), _c, _c, _c, _c, 1); }

var auto_save_status = ""
if global.auto_save auto_save_status = "on" else auto_save_status = "off"
_item = 3
if item_selected = _item 
{ 
	draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " auto_save: " + auto_save_status, _c, _c, _c, _c, 1);
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if key_left || key_right {
		global.auto_save = !global.auto_save;
	}
}
else draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "auto_save: " + auto_save_status, _c, _c, _c, _c, 1);

_item = 4
if global.high_contrast high_contrast_status = "on" else high_contrast_status = "off"
if item_selected = _item 
{ 
	draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " High Contrast: " + high_contrast_status, _c, _c, _c, _c, 1);
	key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if key_left || key_right {
		global.high_contrast = !global.high_contrast;
	}
}
else draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "High Contrast: " + high_contrast_status, _c, _c, _c, _c, 1);






// display save
_item = 5
if item_selected = _item draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " Save Game", _c, _c, _c, _c, 1); 
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "Save Game", _c, _c, _c, _c, 1); }

// display load
_item = 6
if item_selected = _item { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " Load Game", _c, _c, _c, _c, 1); }
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "Load Game", _c, _c, _c, _c, 1); }

_item = 7
if item_selected = 7 { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, " Exit Game", _c, _c, _c, _c, 1); }
else { draw_text_colour(inv_x1 + border * 2, inv_y1 + border + 36 * _item, "Exit Game", _c, _c, _c, _c, 1); }

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("F"))
{
	if item_selected == 0 { close_windows_all(); PLAYER_OBJ.move_freeze = false; }
	if item_selected == 5 { scr_save_game() }	
	if item_selected == 6 { scr_load_game() }	
	if item_selected == 7 { game_end() }	
}



// close inventory window
if frame_count > 0 && (keyboard_check_pressed(vk_escape)){
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.window_open = false;
}
frame_count++;