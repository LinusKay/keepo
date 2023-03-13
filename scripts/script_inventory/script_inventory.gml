// -------< it may be worth altering these functions to accept a specific inventory, so they can be  used when managing NPC/shop inventories
// -------< additionally, a lot of these functions should probably be changed to accept an item, rather than itemIndex
//			this should allow for simpler parsing, and less jumping all over the place

/// @param item_name
function inventory_add(_item_name, _item_description, _item_cost, _item_sprite, _can_gift, _isLetter,  _lovedBy, _likedBy, _dislikedBy, _hatedBy, _quest_item, _quest_id, _quest_stage)
{
	var new_item = ds_list_create();
	ds_list_add(new_item, _item_name, _item_description, _item_cost, _item_sprite, _can_gift, _isLetter,  _lovedBy, _likedBy, _dislikedBy, _hatedBy, _quest_item, _quest_id, _quest_stage);
	ds_list_add(global.inventory, new_item);
}

function inventory_add_letter(_item_name, _item_description, _item_cost, _item_sprite, _can_gift, _isLetter,  _letter_sender_obj, _letter_sender_name, _letter_recipient_obj, _letter_recipient_name, _letter_response)
{
	var new_item = ds_list_create();
	ds_list_add(new_item, _item_name, _item_description, _item_cost, _item_sprite, _can_gift, _isLetter,  _letter_sender_obj, _letter_sender_name, _letter_recipient_obj, _letter_recipient_name, _letter_response);
	ds_list_add(global.inventory, new_item);
}

/// @desc get number of items in inventory
function inventory_get_size()
{
	return ds_list_size(global.inventory);
}

/// @param itemIndex
function inventory_get_item(_item_index){
	return ds_list_find_value(global.inventory, _item_index);
}

/// @param itemIndex
function inventory_get_item_name(_item_index){
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 0);
}

/// @param itemIndex
function inventory_get_item_description(_item_index){
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 1);
}

function inventory_get_item_gift(_item_index){
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 4);
}

/// @param item_name
function inventory_get_item_index(_item_name){
	for(var i = 0; i < 100; i++)
	{	
		if ds_list_find_value(ds_list_find_value(global.inventory, i), 0) == _item_name {return i};	
	} 
	//return false;
}

/// @param item_name
function inventory_remove_item(_item_name)
{	
	ds_list_delete(global.inventory, inventory_get_item_index(_item_name));
}

function inventory_empty()
{
	ds_list_clear(global.inventory);
}

function inventory_get_item_sprite(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 3);
}



function inventory_get_item_love(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 6);
}

function inventory_get_item_like(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 7);
}

function inventory_get_item_dislike(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 8);
}

function inventory_get_item_hate(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 9);
}



function inventory_check_item_quest(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 10);	
}

function inventory_get_item_quest_id(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 11);	
}

function inventory_get_item_quest_stage(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 12);	
}



function inventory_find_name(_item_name)
{
	var found = false;
	for(var i = 0; i < inventory_get_size(); i++)
	{
		print(inventory_get_item_name(i));
		if inventory_get_item_name(i) == _item_name found = true;	
	}
	return found;
}

function inventory_print()
{
	var _finalPrint = "[";
	for(var i = 0; i < ds_list_size(global.inventory); i++)
	{
		var _print = "";
		for(var a  = 0; a < ds_list_size(ds_list_find_value(global.inventory, i)); a++)
			{	
				if a == 0 _print+= "\"";
				if a == 1 _print+= "\"";
				_print += string(ds_list_find_value(ds_list_find_value(global.inventory, i), a));
				if a == 0 _print+= "\"";
				if a == 1 _print+= "\"";
				if a != ds_list_size(ds_list_find_value(global.inventory, i)) - 1 { _print += ", " }
			}
		_print = _print + "]|["
		_finalPrint += _print;
	}
	_finalPrint = string_delete(_finalPrint, string_length(_finalPrint), 1);
	return _finalPrint;
}


// check if item is a letter
function inventory_is_letter(_item)
{
	if ds_list_find_value(_item, 5) return true else return false;	
}

function inventory_get_letter_sender(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 6);	
}

function inventory_get_letter_recipient(_item_index)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _item_index), 8);	
}

function inventory_get_last_picked_up()
{
	return inventory_get_item_name(inventory_get_size() - 1);
}


/// @param item
/// @param target
function inventory_give_item(_item, _target)
{
	if !inventory_is_letter(_item){
		var _can_gift = ds_list_find_value(_item, 4);
		var _lovedBy = ds_list_find_value(_item, 6);
		var _likedBy = ds_list_find_value(_item, 7);
		var _dislikedBy = ds_list_find_value(_item, 8);
		var _hatedBy = ds_list_find_value(_item, 9);
		var _keyItem = ds_list_find_value(_item, 10);
		
		print("item stats");
		print("loved by: "		+ string(_lovedBy) + ", "		+ string(array_length(_lovedBy)));
		print("liked by: "		+ string(_likedBy) + ", "		+ string(array_length(_likedBy)));
		print("disliked by: "	+ string(_dislikedBy)  + ", "	+ string(array_length(_dislikedBy)));
		print("hated by: "		+ string(_hatedBy) + ", "		+ string(array_length(_hatedBy)));
		print(_target.object_index)
		
		if _keyItem
		{
			var _quest_id = ds_list_find_value(_item, 11);	
			var _quest_stage = ds_list_find_value(_item, 12);	
			if obj_quests.ds_quests[# 1, _quest_id] == _quest_stage
			{
				global.latest_gift = [_target, _item];
				event_fire(event.player_gift_item);
				return true;
			}
		}
		else
		{
			if _can_gift
			{
				var gifted = false;
				for(var i = 0; i < array_length(_lovedBy); i++)
				{
					if _lovedBy[i] == _target.object_index
					{
						_target.accept_gift_love = true;
						gifted = true;
					}
				}
				for(var i = 0; i < array_length(_likedBy); i++)
				{
					if _likedBy[i] == _target.object_index
					{
						_target.accept_gift_like = true;
						gifted = true;
					}
				}
				for(var i = 0; i < array_length(_dislikedBy); i++)
				{
					if _dislikedBy[i] == _target.object_index
					{
						_target.accept_gift_dislike = true;
						gifted = true;
					}
				}
				for(var i = 0; i < array_length(_hatedBy); i++)
				{
					if _hatedBy[i] == _target.object_index
					{
						_target.accept_gift_hate = true;
						gifted = true;
					}
				}
				print("gifted: " + string(gifted));
				if !gifted _target.accept_gift_like = true;
				_target.accepting_gift = true;
				global.latest_gift = [_target, _item];
				return true;
			}
			else return false;
		}
	}
	else {
		var _intendedRecipient = ds_list_find_value(_item, 7);
		if _target.object_index != _intendedRecipient
		{
			_target.accepting_gift = true;
			_target.mail_deny = true;
			return false;
		}
		else
		{
			_target.accepting_gift = true;
			_target.mail_response = ds_list_find_value(_item, 9);
			_target.mail_accept = true;
			return true;
		}
	}
}