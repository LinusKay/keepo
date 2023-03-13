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

// initialise mail_box
function mail_init()
{
	global.mail_box = ds_list_create();
}

// add item to mail_box
function mail_create(_item_name, _item_description, _item_cost, _item_sprite, _can_gift, _letter_sender_obj, _letter_sender_name, letter_recipient_obj, _letter_recipient_name, _letter_response)
{
	var new_mail = ds_list_create();
	ds_list_add(new_mail, _item_name, _item_description, _item_cost, _item_sprite, _can_gift, _letter_sender_obj, _letter_sender_name, letter_recipient_obj, _letter_recipient_name, _letter_response);
	ds_list_add(global.mail_box, new_mail);
}

// add all mail_box items to inventory
function mail_add_inventory()
{
	for(var i = 0; i < ds_list_size(global.mail_box); i++)
	{
		scr_new_textbox("Received \"" + ds_list_find_value(ds_list_find_value(global.mail_box, i), 0) + "\"")
		var _item_name = ds_list_find_value(ds_list_find_value(global.mail_box, i), 0);
		var _item_description = ds_list_find_value(ds_list_find_value(global.mail_box, i), 1);
		var _item_cost = ds_list_find_value(ds_list_find_value(global.mail_box, i), 2);
		var _item_sprite = ds_list_find_value(ds_list_find_value(global.mail_box, i), 3);
		var _can_gift = ds_list_find_value(ds_list_find_value(global.mail_box, i), 4);
		var _letter_sender_obj = ds_list_find_value(ds_list_find_value(global.mail_box, i), 5);
		var _letter_sender_name = ds_list_find_value(ds_list_find_value(global.mail_box, i), 6);
		var _letter_recipient_obj = ds_list_find_value(ds_list_find_value(global.mail_box, i), 7);
		var _letter_recipient_name = ds_list_find_value(ds_list_find_value(global.mail_box, i), 8);
		var _letter_response = ds_list_find_value(ds_list_find_value(global.mail_box, i), 9);
		inventory_add_letter(_item_name, _item_description, _item_cost, _item_sprite, _can_gift, _letter_sender_obj, _letter_sender_name, _letter_recipient_obj, _letter_recipient_name, _letter_response);
	}
}

// check/receive unread mail
function mail_check()
{
	if global.tutorial_mail
	{
		scr_new_textbox("There's a note taped to the front of the mail_box.");	
		scr_new_textbox("\"[Mail Tutorial]\"");	
		scr_new_textbox("\"Alright, listen here kid. This here's mail. People LOVE mail.\"");	
		scr_new_textbox("\"Check what's inside, and take it to whoever it belongs to!\"");	
		scr_new_textbox("\"Most friends will happily reward you for bringing them their mail\"");	
		global.tutorial_mail = false;
	}
	
	if global.mail_unread
	{
		dialogue_responses("mail_open");
		// for every item in global.mail_box, print out mail name and add to inventory
		mail_add_inventory();
		global.mail_unread = false;
	}
	else
	{
		dialogue_responses("mail_none");	
	}
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

function openSellBox()
{
	if PLAYER_OBJ.holding_item
	{
		if !ds_list_find_value(PLAYER_OBJ.held_item, 10)
		{
			with instance_create_depth(0, 0, -999, obj_sell_item) item = PLAYER_OBJ.held_item;
			PLAYER_OBJ.move_freeze = true;
		}
	}
}

function sine_wave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}

function sine_between(time, period, minimum, maximum) {
    var midpoint = mean(minimum, maximum);
    var amplitude = maximum - midpoint;
    return sine_wave(time, period, amplitude, midpoint);
}