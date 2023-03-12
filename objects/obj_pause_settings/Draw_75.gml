draw_set_font(fnt_pixellari_small);

var _bg = global.high_contrast
var _c
if global.high_contrast _c = c_white else _c = c_black

scr_nineslice_box_stretch(spr_textbox, invx1, invy1, invx2, invy2, _bg);


PLAYER_OBJ.move_freeze = true;

keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
itemSelected += keyDown - keyUp;
if keyUp play_sfx(snd_click4);
if keyDown play_sfx(snd_click4, 0.8);

var _max = 7;
var _min = 0;
if itemSelected > _max itemSelected = _min;
if itemSelected < _min itemSelected = _max;

var _item = 0
// display settings options
if itemSelected = _item { draw_text_colour(invx1 + border * 2, invy1 + border, " Resume", _c, _c, _c, _c, 1); }
else { draw_text_colour(invx1 + border * 2, invy1 + border, "Resume", _c, _c, _c, _c, 1); }

_item = 1
if itemSelected = _item { 
	draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Volume: " + string(floor(global.volumeMusic * 100)) + "%", _c, _c, _c, _c, 1); 
	keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if keyLeft || keyRight {
		global.volumeMusic -= (keyLeft - keyRight)/10;
		if global.volumeMusic < 0 {
			global.volumeMusic = 0;
		}
		if global.volumeMusic > 1 {
			global.volumeMusic = 1;	
		}
		audio_play_sound(snd_bark, 90, false);
		audio_sound_gain(snd_bark, global.volumeMusic, 0);
		audio_sound_pitch(snd_bark, random_range(0.8, 1.2))
	}
}
else { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Volume: " + string(floor(global.volumeMusic * 100)) + "%", _c, _c, _c, _c, 1); }


// display resolution
_item = 2
if itemSelected = _item { 
	draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Window Size: " + string(global.window_sizes[global.window_size_selected][0]) + "x" + string(global.window_sizes[global.window_size_selected][1]), _c, _c, _c, _c, 1);
	keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if keyLeft || keyRight {
		global.window_size_selected -= keyLeft - keyRight;
		
		if global.window_size_selected < 0 global.window_size_selected = array_length(global.window_sizes) - 1;
		if global.window_size_selected > array_length(global.window_sizes) - 1 global.window_size_selected = 0;
		
		var ww = global.window_sizes[global.window_size_selected][0];
		var wh = global.window_sizes[global.window_size_selected][1];
		window_set_size(ww, wh);
	}
}
else { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Window Size: " + string(global.window_sizes[global.window_size_selected][0]) + "x" + string(global.window_sizes[global.window_size_selected][1]), _c, _c, _c, _c, 1); }

var autoSaveStatus = ""
if global.autoSave autoSaveStatus = "on" else autoSaveStatus = "off"
_item = 3
if itemSelected = _item 
{ 
	draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Autosave: " + autoSaveStatus, _c, _c, _c, _c, 1);
	keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if keyLeft || keyRight {
		global.autoSave = !global.autoSave;
	}
}
else draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Autosave: " + autoSaveStatus, _c, _c, _c, _c, 1);

_item = 4
if global.high_contrast highContrastStatus = "on" else highContrastStatus = "off"
if itemSelected = _item 
{ 
	draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " High Contrast: " + highContrastStatus, _c, _c, _c, _c, 1);
	keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	if keyLeft || keyRight {
		global.high_contrast = !global.high_contrast;
	}
}
else draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "High Contrast: " + highContrastStatus, _c, _c, _c, _c, 1);






// display save
_item = 5
if itemSelected = _item draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Save Game", _c, _c, _c, _c, 1); 
else { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Save Game", _c, _c, _c, _c, 1); }

// display load
_item = 6
if itemSelected = _item { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Load Game", _c, _c, _c, _c, 1); }
else { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Load Game", _c, _c, _c, _c, 1); }

_item = 7
if itemSelected = 7 { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, " Exit Game", _c, _c, _c, _c, 1); }
else { draw_text_colour(invx1 + border * 2, invy1 + border + 36 * _item, "Exit Game", _c, _c, _c, _c, 1); }

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("F"))
{
	if itemSelected == 0 { close_windows_all(); PLAYER_OBJ.move_freeze = false; }
	if itemSelected == 5 { scr_save_game() }	
	if itemSelected == 6 { scr_load_game() }	
	if itemSelected == 7 { game_end() }	
}



// close inventory window
if frameCount > 0 && (keyboard_check_pressed(vk_escape)){
	instance_destroy();	
	PLAYER_OBJ.move_freeze = false;
	global.windowOpen = false;
}
frameCount++;