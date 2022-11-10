// -------< it may be worth altering these functions to accept a specific inventory, so they can be  used when managing NPC/shop inventories
// -------< additionally, a lot of these functions should probably be changed to accept an item, rather than itemIndex
//			this should allow for simpler parsing, and less jumping all over the place

/// @param itemName
function inventory_add(_itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _isLetter,  _lovedBy, _likedBy, _dislikedBy, _hatedBy, _questItem, _questID, _questStage)
{
	var newItem = ds_list_create();
	ds_list_add(newItem, _itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _isLetter,  _lovedBy, _likedBy, _dislikedBy, _hatedBy, _questItem, _questID, _questStage);
	ds_list_add(global.inventory, newItem);
}

function inventory_add_letter(_itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _isLetter,  _letterSenderObj, _letterSenderName, _letterRecipientObj, _letterRecipientName, _letterResponse)
{
	var newItem = ds_list_create();
	ds_list_add(newItem, _itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _isLetter,  _letterSenderObj, _letterSenderName, _letterRecipientObj, _letterRecipientName, _letterResponse);
	ds_list_add(global.inventory, newItem);
}

/// @desc get number of items in inventory
function inventory_get_size()
{
	return ds_list_size(global.inventory);
}

/// @param itemIndex
function inventory_get_item(_itemIndex){
	return ds_list_find_value(global.inventory, _itemIndex);
}

/// @param itemIndex
function inventory_get_item_name(_itemIndex){
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 0);
}

/// @param itemIndex
function inventory_get_item_description(_itemIndex){
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 1);
}

function inventory_get_item_gift(_itemIndex){
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 4);
}

/// @param itemName
function inventory_get_item_index(_itemName){
	for(var i = 0; i < 100; i++)
	{	
		if ds_list_find_value(ds_list_find_value(global.inventory, i), 0) == _itemName {return i};	
	} 
	//return false;
}

/// @param itemName
function inventory_remove_item(_itemName)
{	
	ds_list_delete(global.inventory, inventory_get_item_index(_itemName));
}

function inventory_empty()
{
	ds_list_clear(global.inventory);
}

function inventory_get_item_sprite(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 3);
}



function inventory_get_item_love(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 6);
}

function inventory_get_item_like(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 7);
}

function inventory_get_item_dislike(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 8);
}

function inventory_get_item_hate(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 9);
}



function inventory_check_item_quest(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 10);	
}

function inventory_get_item_quest_id(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 11);	
}

function inventory_get_item_quest_stage(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 12);	
}



function inventory_find_name(_itemName)
{
	var found = false;
	for(var i = 0; i < inventory_get_size(); i++)
	{
		print(inventory_get_item_name(i));
		if inventory_get_item_name(i) == _itemName found = true;	
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

function inventory_get_letter_sender(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 6);	
}

function inventory_get_letter_recipient(_itemIndex)
{
	return ds_list_find_value(ds_list_find_value(global.inventory, _itemIndex), 8);	
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
		var _canGift = ds_list_find_value(_item, 4);
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
			var _questID = ds_list_find_value(_item, 11);	
			var _questStage = ds_list_find_value(_item, 12);	
			if obj_quests.ds_quests[# 1, _questID] == _questStage
			{
				global.latestGift = [_target, _item];
				event_fire(event.playerGiftItem);
				return true;
			}
		}
		else
		{
			if _canGift
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
				global.latestGift = [_target, _item];
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