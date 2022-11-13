if frameCount = 1
{
	if variable_instance_exists(id, "dialogue_object") 
		{
			if dialogue_object != noone 
			{
				if instance_exists(dialogue_object)
				{
					dialogue_object.sprite_index = sprite_change;
					if charFocus camera_zoom_character(dialogue_object)
				}
			}
	}
	if variable_instance_exists(id, "sound") if sound != noone play_sfx(sound);
}
textProgress += global.textSpeed;
close_windows_except(obj_textbox);

if shake
{
	if frameCount % shakeInterval == 0 
	{
		if shakeLeft
		{
			x1 -= shakeDistance;
			x2 -= shakeDistance;
		}
		else
		{
			x1 += shakeDistance;
			x2 += shakeDistance;
		}
		shakeLeft = !shakeLeft;
		shakeRight = !shakeRight;
	}
	
}
frameCount++;
//cycle responses
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responseSelected += keyDown - keyUp;

var _max = array_length(responses) - 1;
var _min = 0;
if responseSelected > _max responseSelected = _min;
if responseSelected < _min responseSelected = _max;

//end message
if (keyboard_check_pressed(vk_space))
{
	var _messageLength = string_length(message);
	if textProgress >= _messageLength
	{
		if responses[0] != -1
		{
			with originInstance	dialogueResponses(other.responseScripts[other.responseSelected]);
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
		if textProgress > 2
		{
			textProgress = _messageLength;	
		}
	}
}