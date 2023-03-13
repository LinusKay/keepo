if frame_count = 1
{
	if variable_instance_exists(id, "dialogue_object") 
		{
			if dialogue_object != noone 
			{
				if instance_exists(dialogue_object)
				{
					dialogue_object.sprite_index = sprite_change;
					if char_focus camera_zoom_character(dialogue_object)
				}
			}
	}
	if variable_instance_exists(id, "sound") if sound != noone play_sfx(sound);
}
text_progress += global.text_speed;
close_windows_except(obj_textbox);

if shake
{
	if frame_count % shake_interval == 0 
	{
		if shake_left
		{
			x1 -= shake_distance;
			x2 -= shake_distance;
		}
		else
		{
			x1 += shake_distance;
			x2 += shake_distance;
		}
		shake_left = !shake_left;
		shake_right = !shake_right;
	}
	
}
frame_count++;
//cycle responses
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
response_selected += key_down - key_up;

var _max = array_length(responses) - 1;
var _min = 0;
if response_selected > _max response_selected = _min;
if response_selected < _min response_selected = _max;

//end message
if (keyboard_check_pressed(vk_space))
{
	var _message_length = string_length(message);
	if text_progress >= _message_length
	{
		if responses[0] != -1
		{
			with origin_instance	dialogue_responses(other.response_scripts[other.response_selected]);
		}
		if instance_exists(obj_parent_queue)
		{
			with obj_parent_queue {ticket--;}
		}
		else {
			PLAYER_OBJ.move_freeze = false;	
			camera_reset();
			// resume sequence
			if(instance_exists(obj_seq_manager)){
				with instance_find(obj_seq_manager, 0) {
					paused = false
				}
			}
		}
		instance_destroy();	
	}
	else
	{
		if text_progress > 2
		{
			text_progress = _message_length;	
		}
	}
}