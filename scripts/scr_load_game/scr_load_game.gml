function scr_load_game(){
	var _file = "save.sav";
	if (file_exists(_file))
	{
		//load game data
		//var _json = load_json_from_file(_file);
		
		
		if (global.verify_save_integrity)
		{
			var _buffer = buffer_load(_file);
			var _string = buffer_read(_buffer, buffer_string);
			buffer_delete(_buffer);
		
			var _expected_hash = string_copy(_string, string_length(_string)-40, 40);
			var _hashless_string = string_copy(_string, 1, string_length(_string)-42);
			var _new_hash = sha1_string_utf8_hmac(global.hmac_key, _hashless_string);
			
			if  _expected_hash == _new_hash var _json = json_decode(_hashless_string)
			else
			{
				print("save integrity compromised");
				return false;
			}
		}
		else var _json = load_json_from_file(_file);
		
		room_goto(_json[? "room"]);
		PLAYER_OBJ.x = _json[? "playerX"];
		PLAYER_OBJ.y = _json[? "playerY"];
		global.coins = _json[? "coins"];
		global.music_teleport_secret = _json[? "music_teleport_secret"]
		var load_relationships = _json[? "relationships"]
		global.relationships[? "sleeves"] = load_relationships[? "sleeves"];
		global.relationships[? "luco"] = load_relationships[? "luco"];
		global.relationships[? "blue"] = load_relationships[? "blue"];
		global.relationships[? "hat man"] = load_relationships[? "hat man"];
		global.auto_save = _json[? "auto_save"];
		if(instance_exists(obj_time)) {instance_find(obj_time, 0).time = _json[? "time"]}
		
		PLAYER_OBJ.holding_item = _json[? "holdingItem"];
		if PLAYER_OBJ.holding_item PLAYER_OBJ.held_item = _json[? "heldItem"];
		
		
		
		//load character options
		//dude im so fucking sorry
		//i dont even need to point out how fucked up this is
		//i do not know how to manage nested maps and i sure hope you do
		ds_list_copy(global.picked_up_items, _json[? "picked_up_items"]);
		ds_map_destroy(global.character_options);
		global.character_options = ds_map_create();
		var keys = ds_map_keys_to_array(_json[? "character_options"]);
		for(var i = 0; i < array_length(keys); i++)
		{
			global.character_options[? keys[i]] = ds_map_create();
			global.character_options[? keys[i]][? "room"] = json_decode(_json[? "character_options"][? keys[i]])[? "room"];
			global.character_options[? keys[i]][? "x"] = json_decode(_json[? "character_options"][? keys[i]])[? "x"];
			global.character_options[? keys[i]][? "y"] = json_decode(_json[? "character_options"][? keys[i]])[? "y"];
			global.character_options[? keys[i]][? "script"] = json_decode(_json[? "character_options"][? keys[i]])[? "script"];
			//like look at this. 
			//taking a json string as a string, splitting it, grabbing the value then turning it into a single-length array?
			//wow
			//genius, honestly
			var _data = scr_string_split(_json[? "character_options"][? keys[i]], ",");
			var _strstart = string_delete(_data[0], string_length(_data[0]) - 2, 4);
			var _strend = string_delete(_strstart, 1, 13);
			global.character_options[? keys[i]][? "args"] = [_strend]
			
			global.character_options[? keys[i]][? "sprite"] = json_decode(_json[? "character_options"][? keys[i]])[? "sprite"];
		}
		
		
		var load_quests = json_parse(_json[? "quests"])
		for(var i = 0; i < array_length(load_quests); i++)
		{
			obj_quests.ds_quests[# 1, i] = load_quests[i];
		}
		

		
		// load inventory
		inventory_empty();
		if _json[? "inventory"] != "" 
		{
			var _inv_array = scr_string_split(_json[? "inventory"], "|")
			
			for(var i = 0; i < array_length(_inv_array); i++)
			{
				//var _item_array = scr_string_split(_inv_array[i], ",");
				var _item_array = json_parse(_inv_array[i]);
				
				for(var a = 0; a < array_length(_item_array); a++)
				{	
					_item_array[a] = scr_string_trim(_item_array[a]);
					if scr_check_num(_item_array[a]) _item_array[a] = real(_item_array[a]);
				}
				
				//if array_length(_item_array) > 13
				//{
				//	inventory_add_letter(_item_array[0], _item_array[1],_item_array[2],_item_array[3],_item_array[4],_item_array[5],_item_array[6],_item_array[7],_item_array[8],_item_array[9],_item_array[10])
				//}
				//else
				//{
					inventory_add(_item_array[0], _item_array[1],_item_array[2],_item_array[3],_item_array[4],_item_array[5],json_parse(_item_array[6]),json_parse(_item_array[7]),json_parse(_item_array[8]),json_parse(_item_array[9]), _item_array[10], _item_array[11], _item_array[12]);
				//}
			}
		}
		close_windows_all();
		PLAYER_OBJ.load_message_timer = PLAYER_OBJ.load_message_timer_default;
		notification("LOADED");
		return true;
		
	}
	else
	{
		print("no save exists");
		return false;
	}
}

function load_json_from_file(_filename)
{
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}