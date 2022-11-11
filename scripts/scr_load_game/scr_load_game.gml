function scr_load_game(){
	var _file = "save.sav";
	if (file_exists(_file))
	{
		//load game data
		//var _json = load_json_from_file(_file);
		
		
		if (global.verifySaveIntegrity)
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
		global.musicTeleportSecret = _json[? "musicTeleportSecret"]
		var loadRelationships = _json[? "relationships"]
		global.relationships[? "sleeves"] = loadRelationships[? "sleeves"];
		global.relationships[? "luco"] = loadRelationships[? "luco"];
		global.relationships[? "blue"] = loadRelationships[? "blue"];
		global.relationships[? "hat man"] = loadRelationships[? "hat man"];
		global.tutorialMail = _json[? "tutorialMail"]
		global.mailUnread = _json[? "mailUnread"];
		global.autoSave = _json[? "autoSave"];
		if(instance_exists(obj_time)) {instance_find(obj_time, 0).time = _json[? "time"]}
		
		PLAYER_OBJ.holding_item = _json[? "holdingItem"];
		if PLAYER_OBJ.holding_item PLAYER_OBJ.held_item = _json[? "heldItem"];
		
		
		
		//load character options
		//dude im so fucking sorry
		//i dont even need to point out how fucked up this is
		//i do not know how to manage nested maps and i sure hope you do
		ds_list_copy(global.pickedUpItems, _json[? "pickedUpItems"]);
		ds_map_destroy(global.characterOptions);
		global.characterOptions = ds_map_create();
		var keys = ds_map_keys_to_array(_json[? "characterOptions"]);
		for(var i = 0; i < array_length(keys); i++)
		{
			print(string_upper(keys[i]));
			print(_json[? "characterOptions"][? keys[i]])
			print(json_decode(_json[? "characterOptions"][? keys[i]])[? "room"])
			global.characterOptions[? keys[i]] = ds_map_create();
			global.characterOptions[? keys[i]][? "room"] = json_decode(_json[? "characterOptions"][? keys[i]])[? "room"];
			print(json_decode(_json[? "characterOptions"][? keys[i]])[? "x"])
			global.characterOptions[? keys[i]][? "x"] = json_decode(_json[? "characterOptions"][? keys[i]])[? "x"];
			print(json_decode(_json[? "characterOptions"][? keys[i]])[? "y"])
			global.characterOptions[? keys[i]][? "y"] = json_decode(_json[? "characterOptions"][? keys[i]])[? "y"];
			print(json_decode(_json[? "characterOptions"][? keys[i]])[? "script"])
			global.characterOptions[? keys[i]][? "script"] = json_decode(_json[? "characterOptions"][? keys[i]])[? "script"];
			//like look at this. 
			//taking a json string as a string, splitting it, grabbing the value then turning it into a single-length array?
			//wow
			//genius, honestly
			var _data = scr_string_split(_json[? "characterOptions"][? keys[i]], ",");
			var _strstart = string_delete(_data[0], string_length(_data[0]) - 2, 4);
			var _strend = string_delete(_strstart, 1, 13);
			global.characterOptions[? keys[i]][? "args"] = [_strend]
			
			print(json_decode(_json[? "characterOptions"][? keys[i]])[? "sprite"])
			global.characterOptions[? keys[i]][? "sprite"] = json_decode(_json[? "characterOptions"][? keys[i]])[? "sprite"];
		}
		
		
		var loadQuests = json_parse(_json[? "quests"])
		for(var i = 0; i < array_length(loadQuests); i++)
		{
			obj_quests.ds_quests[# 1, i] = loadQuests[i];
		}
		

		
		// load inventory
		inventory_empty();
		print(_json[? "inventory"]);
		if _json[? "inventory"] != "" 
		{
			var _invArray = scr_string_split(_json[? "inventory"], "|")
			
			for(var i = 0; i < array_length(_invArray); i++)
			{
				//var _itemArray = scr_string_split(_invArray[i], ",");
				var _itemArray = json_parse(_invArray[i]);
				
				print("loading item: " + string(_itemArray));
				for(var a = 0; a < array_length(_itemArray); a++)
				{	
					_itemArray[a] = scr_string_trim(_itemArray[a]);
					if scr_check_num(_itemArray[a]) _itemArray[a] = real(_itemArray[a]);
				}
				
				//if array_length(_itemArray) > 13
				//{
				//	inventory_add_letter(_itemArray[0], _itemArray[1],_itemArray[2],_itemArray[3],_itemArray[4],_itemArray[5],_itemArray[6],_itemArray[7],_itemArray[8],_itemArray[9],_itemArray[10])
				//}
				//else
				//{
					inventory_add(_itemArray[0], _itemArray[1],_itemArray[2],_itemArray[3],_itemArray[4],_itemArray[5],json_parse(_itemArray[6]),json_parse(_itemArray[7]),json_parse(_itemArray[8]),json_parse(_itemArray[9]), _itemArray[10], _itemArray[11], _itemArray[12]);
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