function scr_save_game()
{
	//create save map
	var _map = ds_map_create();
	
	_map[? "room"] = room;
	_map[? "playerX"] = PLAYER_OBJ.x;
	_map[? "playerY"] = PLAYER_OBJ.y;
	_map[? "coins"] = global.coins;
	_map[? "music_teleport_secret"] = global.music_teleport_secret;
	
	if(instance_exists(obj_time)) {
		_map[? "time"] = obj_time.time	
		_map[? "time_direction"] = obj_time.time_direction
	}
	else {
		_map[? "time"] = 0
		_map[? "time_direction"] = 0
	}
	
	ds_map_add_map(_map, "relationships", global.relationships);
	
	_map[? "auto_save"] = global.auto_save;
	
	_map[? "holdingItem"] = PLAYER_OBJ.holding_item;
	if PLAYER_OBJ.holding_item	ds_map_add_list(_map, "heldItem", PLAYER_OBJ.held_item)
	
	//save character options
	var dummy_character_options = ds_map_create();
	ds_map_copy(dummy_character_options, global.character_options);
	var keys = ds_map_keys_to_array(dummy_character_options);
	ds_map_add_map(_map, "character_options", dummy_character_options);
	for(var i = 0; i < array_length(keys); i++)
	{
		_map[? "character_options"][? keys[i]] = json_encode(dummy_character_options[? keys[i]]);
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
	ds_map_add_list(_map, "questsTracked", global.tracked_quests);
	
	var _picked_up_items = ds_list_create();
	ds_list_copy(_picked_up_items, global.picked_up_items);
	ds_map_add_list(_map, "picked_up_items", _picked_up_items);
	
	// save inventory
	_map[? "inventory"] = inventory_print();
	
	//save all to string
	var _string = json_encode(_map);
	
	if global.verify_save_integrity
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
	ds_map_destroy(dummy_character_options);
	ds_list_destroy(_picked_up_items);
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