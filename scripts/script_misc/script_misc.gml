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
	global.windowOpen = false;
	PLAYER_OBJ.move_freeze = false;
}

///@desc clear all windows
function close_windows_except(_window)
{
	if _window != obj_inventory if instance_exists(obj_inventory) with obj_inventory instance_destroy();
	if _window != obj_relationship_tracker if instance_exists(obj_relationship_tracker) with obj_relationship_tracker instance_destroy();
	if _window != obj_journal if instance_exists(obj_journal) with obj_journal instance_destroy();
	if _window != obj_outfits if instance_exists(obj_outfits) with obj_outfits instance_destroy();
}

function create_painting(_image)
{
	if !instance_exists(obj_view_painting) 
	{ 
		painting = instance_create_depth(0, 0, 0, obj_view_painting);
		painting.image = _image;
	}
	global.windowOpen = true;
}

// initialise mailbox
function mail_init()
{
	global.mailBox = ds_list_create();
}

// add item to mailbox
function mail_create(_itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _letterSenderObj, _letterSenderName, letterRecipientObj, _letterRecipientName, _letterResponse)
{
	var newMail = ds_list_create();
	ds_list_add(newMail, _itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _letterSenderObj, _letterSenderName, letterRecipientObj, _letterRecipientName, _letterResponse);
	ds_list_add(global.mailBox, newMail);
}

// add all mailbox items to inventory
function mail_add_inventory()
{
	for(var i = 0; i < ds_list_size(global.mailBox); i++)
	{
		scr_new_textbox("Received \"" + ds_list_find_value(ds_list_find_value(global.mailBox, i), 0) + "\"")
		var _itemName = ds_list_find_value(ds_list_find_value(global.mailBox, i), 0);
		var _itemDescription = ds_list_find_value(ds_list_find_value(global.mailBox, i), 1);
		var _itemCost = ds_list_find_value(ds_list_find_value(global.mailBox, i), 2);
		var _itemSprite = ds_list_find_value(ds_list_find_value(global.mailBox, i), 3);
		var _canGift = ds_list_find_value(ds_list_find_value(global.mailBox, i), 4);
		var _letterSenderObj = ds_list_find_value(ds_list_find_value(global.mailBox, i), 5);
		var _letterSenderName = ds_list_find_value(ds_list_find_value(global.mailBox, i), 6);
		var _letterRecipientObj = ds_list_find_value(ds_list_find_value(global.mailBox, i), 7);
		var _letterRecipientName = ds_list_find_value(ds_list_find_value(global.mailBox, i), 8);
		var _letterResponse = ds_list_find_value(ds_list_find_value(global.mailBox, i), 9);
		inventory_add_letter(_itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _letterSenderObj, _letterSenderName, _letterRecipientObj, _letterRecipientName, _letterResponse);
	}
}

// check/receive unread mail
function mail_check()
{
	if global.tutorialMail
	{
		scr_new_textbox("There's a note taped to the front of the mailbox.");	
		scr_new_textbox("\"[Mail Tutorial]\"");	
		scr_new_textbox("\"Alright, listen here kid. This here's mail. People LOVE mail.\"");	
		scr_new_textbox("\"Check what's inside, and take it to whoever it belongs to!\"");	
		scr_new_textbox("\"Most friends will happily reward you for bringing them their mail\"");	
		global.tutorialMail = false;
	}
	
	if global.mailUnread
	{
		dialogueResponses("mail_open");
		// for every item in global.mailbox, print out mail name and add to inventory
		mail_add_inventory();
		global.mailUnread = false;
	}
	else
	{
		dialogueResponses("mail_none");	
	}
}



///@description check if most recent gift matches a given recipient/item. used in delivery quests
///@arg recipient obj name
///@arg item name
function gift_check(_recipient, _item)
{
	return object_get_name(global.latestGift[0].object_index) == _recipient && ds_list_find_value(global.latestGift[1], 0) == _item;
}

///@description play a sound effect
///@arg sound asset
///@arg pitch (optional)
function play_sfx(_sound)
{
	audio_play_sound(_sound, 90, false);
	audio_sound_gain(_sound, global.volumeMusic, 0);
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