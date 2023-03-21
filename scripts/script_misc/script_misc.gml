/// @param msg
function print(_msg){
	show_debug_message(_msg);
}

function placeholder() {}

function close_windows_all()
{
	if instance_exists(obj_inventory) with obj_inventory instance_destroy();
	if instance_exists(obj_relationship_tracker) with obj_relationship_tracker instance_destroy();
	if instance_exists(obj_journal) with obj_journal instance_destroy();
	if instance_exists(obj_outfits) with obj_outfits instance_destroy();
	if instance_exists(obj_pause_settings) with obj_pause_settings instance_destroy();
	global.window_open = false;
	PLAYER_OBJ.move_freeze = false;
}

///@desc clear all windows
function close_windows_except(_window)
{
	if _window != obj_inventory if instance_exists(obj_inventory) with obj_inventory instance_destroy();
	if _window != obj_relationship_tracker if instance_exists(obj_relationship_tracker) with obj_relationship_tracker instance_destroy();
	if _window != obj_journal if instance_exists(obj_journal) with obj_journal instance_destroy();
	if _window != obj_outfits if instance_exists(obj_outfits) with obj_outfits instance_destroy();
	if _window != obj_pause_settings if instance_exists(obj_pause_settings) with obj_pause_settings instance_destroy();
}

function create_painting(_image)
{
	if !instance_exists(obj_view_painting) 
	{ 
		painting = instance_create_depth(0, 0, 0, obj_view_painting);
		painting.image = _image;
	}
	global.window_open = true;
}


///@description check if most recent gift matches a given recipient/item. used in delivery quests
///@arg recipient obj name
///@arg item name
function gift_check(_recipient, _item)
{
	return object_get_name(global.latest_gift[0].object_index) == _recipient && ds_list_find_value(global.latest_gift[1], 0) == _item;
}

///@description play a sound effect
///@arg sound asset
///@arg pitch (optional)
function play_sfx(_sound)
{
	audio_play_sound(_sound, 90, false);
	audio_sound_gain(_sound, global.volume_music, 0);
	if argument_count > 1 audio_sound_pitch(_sound, argument[1]) else audio_sound_pitch(_sound, 1)
}


function notification(_text)
{
	global.notification_timer = global.notification_timer_default;
	array_push(global.notification_text, _text);
}

function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}