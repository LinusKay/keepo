function scr_save_game()
{
	//create save map
	var _map = ds_map_create();
	
	_map[? "room"] = room;
	_map[? "playerX"] = PLAYER_OBJ.x;
	_map[? "playerY"] = PLAYER_OBJ.y;
	_map[? "coins"] = global.coins;
	_map[? "musicTeleportSecret"] = global.musicTeleportSecret;
	
	if(instance_exists(obj_time)) {
		_map[? "time"] = obj_time.time	
		_map[? "timeDirection"] = obj_time.timeDirection
	}
	else {
		_map[? "time"] = 0
		_map[? "timeDirection"] = 0
	}
	
	ds_map_add_map(_map, "relationships", global.relationships);
	
	_map[? "tutorialMail"] = global.tutorialMail;
	_map[? "mailUnread"] = global.mailUnread;
	_map[? "autoSave"] = global.autoSave;
	
	_map[? "holdingItem"] = PLAYER_OBJ.holding_item;
	if PLAYER_OBJ.holding_item	ds_map_add_list(_map, "heldItem", PLAYER_OBJ.held_item)
	
	//save character options
	var dummyCharacterOptions = ds_map_create();
	ds_map_copy(dummyCharacterOptions, global.characterOptions);
	var keys = ds_map_keys_to_array(dummyCharacterOptions);
	ds_map_add_map(_map, "characterOptions", dummyCharacterOptions);
	for(var i = 0; i < array_length(keys); i++)
	{
		_map[? "characterOptions"][? keys[i]] = json_encode(dummyCharacterOptions[? keys[i]]);
	}
	
	//save quest progress
	_map[? "quests"] = "[";
	for(var i = 0; i < obj_quests.ds_quests_number; i++)
	{
		_map[? "quests"] += string(obj_quests.ds_quests[# 1, i]);
		
		if (i != obj_quests.ds_quests_number - 1) _map[? "quests"] += ",";
	}
	_map[? "quests"] += "]";
	
	//save tracked quests
	ds_map_add_list(_map, "questsTracked", global.trackedQuests);
	
	var _pickedUpItems = ds_list_create();
	ds_list_copy(_pickedUpItems, global.pickedUpItems);
	ds_map_add_list(_map, "pickedUpItems", _pickedUpItems);
	
	// save inventory
	_map[? "inventory"] = inventory_print();
	
	//save all to string
	var _string = json_encode(_map);
	
	if global.verifySaveIntegrity
	{
		//Make an HMAC hash
		var _hmac_hash = sha1_string_utf8_hmac(global.hmac_key, _string);
	
		//add hmac hash to string
		_string += "#" + _hmac_hash + "#";
	}
	
	save_string_to_file("save.sav", _string);
	save_string_to_file("README.txt", ":( pwease no touchj cheaty save files");
	
	print(_string);
	
	//destroy data
	ds_map_destroy(_map);
	ds_map_destroy(dummyCharacterOptions);
	ds_list_destroy(_pickedUpItems);
	print("Game saved!");
	PLAYER_OBJ.save_message_timer = PLAYER_OBJ.save_message_timer_default;
	notification("SAVED");
}

function save_string_to_file(_filename, _string)
{
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}