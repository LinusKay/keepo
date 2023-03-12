/// @desc Create new textbox object
/// @param message
/// @param background
/// @param character portrait sprite
/// @param font
/// @param responses[]
/// @param character to change sprite of
/// @param sprite to change to
function scr_new_textbox(){
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_text_queued; else _obj = obj_textbox;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		dialogue_object = noone;
		sound = noone;
		message = argument[0];
		if instance_exists(other) originInstance = other.id else originInstance = noone;
		if argument_count > 1 background = argument[1] else background = 0;
		if argument_count > 2 portrait_spr = argument[2] else portrait_spr = noone;
		if argument_count > 3 font = argument[3] else font = fnt_block_sans;
		if argument_count > 4 && argument[4] != -1
		{
			// trim unique identifiers from responses and store
			responses = argument[4];
			for(var i = 0; i < array_length(responses); i++)
			{
				var _idPosition = string_pos(":", responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, _idPosition - 1);
				responses[i] = string_delete(responses[i], 1, _idPosition);
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
		if argument_count > 5
		{
			objChangeSprite = argument[5];	
			sprChangeSprite = argument[6];	
		}
		else
		{
			objChangeSprite = noone;
			sprChangeSprite = noone;
		}
		if argument_count > 6 shake = argument[6] else shake = false;
	}
	with PLAYER_OBJ
	{
		if PLAYER_OBJ.move_freeze == false
		{
			PLAYER_OBJ.move_freeze = true;
		}
	}
}

///@arg text
///@arg background
///@arg character dialogue preset
///@arg responses
///@arg shake
///@arg colour
function dialogue_textbox(){
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_text_queued; else _obj = obj_textbox;
	
	// pause sequence whilst text
	if(!instance_exists(obj_seq_manager)){ instance_create_layer(0, 0, "Instances", obj_seq_manager) }
	with instance_find(obj_seq_manager, 0) {
		paused = true
	}
	
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		colour = noone
		message = argument[0];
		if instance_exists(other) originInstance = other.id else originInstance = noone;
		if argument_count > 1 background = argument[1] else background = 0;
		if argument_count > 2 && argument[2] != -1 && argument[2] != noone
		{
			var character_preset = global.dialogue_presets_array[argument[2]];
			var preset_args = array_length(character_preset);
			dialogue_object = character_preset[0];
			portrait_spr = character_preset[1];
			font = character_preset[2];
			sprite_change = character_preset[3];
			if preset_args > 4 sound = character_preset[4] else sound = noone;
			if preset_args > 5 charFocus = character_preset[5] else charFocus = true;
			if preset_args > 6 colour = character_preset[6];
		}
		else 
		{
			font = noone;
			portrait_spr = noone;
		}
		
		if argument_count > 3 && argument[3] != -1
		{
			// trim unique identifiers from responses and store
			responses = argument[3];
			for(var i = 0; i < array_length(responses); i++)
			{
				var _idPosition = string_pos(":", responses[i]);
				responseScripts[i] = string_copy(responses[i], 1, _idPosition - 1);
				responses[i] = string_delete(responses[i], 1, _idPosition);
			}
		}
		else
		{
			responses = [-1];
			responseScripts = [-1];
		}
		
		if argument_count > 4 
		{
			shake = argument[4] 
			if argument_count > 5 shakeDistance = argument[5] else shakeDistance = 10;
		}
		else shake = false;

	}
	with PLAYER_OBJ
	{
		if PLAYER_OBJ.move_freeze == false
		{
			PLAYER_OBJ.move_freeze = true;
		}
	}
}

///@description queue a print statement into dialogue
///@description will create a queued print object and run after preceding queued items
///@arg string
function dialogue_print(_string)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_print_queue; else _obj =  obj_dialogue_print;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		str = _string
	}
}

///@description queue a quest start into dialogue
///@description will create a queued quest start object and run after preceding queued items
///@arg quest id
function dialogue_quest_start(_quest_id)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_quest_start_queue; else _obj =  obj_dialogue_quest_start;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		quest_id = _quest_id
	}
}

///@description queue a quest start into dialogue
///@description will create a queued quest start object and run after preceding queued items
///@arg quest id
function dialogue_quest_advance(_quest_id)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_quest_advance_queue; else _obj =  obj_dialogue_quest_advance;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		quest_id = _quest_id
	}
}

///@description queue a quest finish into dialogue
///@description will create a queued quest finish object and run after preceding queued items
///@arg quest id
function dialogue_quest_finish(_quest_id)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_quest_finish_queue; else _obj =  obj_dialogue_quest_finish;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		quest_id = _quest_id
	}
}

///@description queue an instance despawn into dialogue
///@description will create a queued instance despawn object and run after preceding queued items
///@arg object
function dialogue_despawn(_object)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_despawn_queue; else _obj =  obj_dialogue_despawn;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object
	}
}


///@description queue an instance spawn into dialogue
///@description will create a queued instance spawn object and run after preceding queued items
///@arg x
///@arg y
///@arg depth
///@arg object
function dialogue_spawn(_x, _y, _objDepth, _object)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_spawn_queue; else _obj =  obj_dialogue_spawn;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		objX = _x 
		objY = _y
		objDepth = _objDepth
		obj = _object
	}
}

///@description queue a script into dialogue
///@description will create a queued script object and run after preceding queued items
///@arg script
///@arg args
function dialogue_script(_script, _args)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_script_queue; else _obj =  obj_dialogue_script;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		scr = _script
		args = _args
	}
}
///@description queue an item add into dialogue
///@description will create a queued item add object and run after preceding queued items
///@arg itemName
///@arg itemDescription
///@arg itemCost
///@arg itemSprite
///@arg canGift
///@arg lovedBy
///@arg likedBy
///@arg dislikedBy
///@arg hatedBy
function dialogue_item_add(_itemName, _itemDescription, _itemCost, _itemSprite, _canGift, _lovedBy, _likedBy, _dislikedBy, _hatedBy)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_item_add_queue; else _obj =  obj_dialogue_item_add;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		itemName = _itemName;
		if argument_count > 1 itemDescription = _itemDescription else itemDescription = "???"
		if argument_count > 2 itemCost = _itemCost else itemCost = 0;
		if argument_count > 3 itemSprite = _itemSprite else itemSprite = spr_item_rock;
		if argument_count > 4 canGift = _canGift else canGift = false;
		if argument_count > 5
		{
			lovedBy = _lovedBy;
			likedBy = _likedBy;
			dislikedBy = _dislikedBy;
			hatedBy = _hatedBy;
		}
		else
		{
			lovedBy = [ ];
			likedBy = [ ]; 
			dislikedBy = [ ];
			hatedBy = [ ];
		}
	}
}

///@description queue an item remove into dialogue
///@description will create an item remove start object and run after preceding queued items
///@arg itemName
function dialogue_item_remove(_itemName)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_item_remove_queue; else _obj =  obj_dialogue_item_remove;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		itemName = _itemName;
	}
}

///@description queue a sprite change into dialogue
///@description will create a queued sprite change object and run after preceding queued items
///@arg object id
///@arg sprite id
function dialogue_change_sprite(_object, _sprite)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_change_sprite_queue; else _obj =  obj_dialogue_change_sprite;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		sprite = _sprite;
	}
}

///@description queue an object script change into dialogue
///@description will create a queued object script change object and run after preceding queued items
///@arg object
///@arg script
///@arg args
function dialogue_change_obj_script(_object, _script, _args)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_change_obj_script_queue; else _obj =  obj_dialogue_change_obj_script;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		scr = _script;
		args = _args;
	}
}

///@description queue an object move into dialogue
///@description will create a queued object move object and run after preceding queued items
///@arg object
///@arg room
///@arg x
///@arg y
function dialogue_move_obj(_object, _room, _x, _y)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_move_obj_queue; else _obj =  obj_dialogue_move_obj;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		newRoom = _room;
		newX = _x;
		newY = _y;
	}
}

///@description queue a camera focus into dialogue
///@description will create a queued camera focus object and run after preceding queued items
///@arg object id
function dialogue_focus(_obj_zoom_id)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_focus_queue; else _obj =  obj_dialogue_focus;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		obj_zoom_id = _obj_zoom_id;
	}
}
///@description queue an emote bubble from an object
///@arg object id
///@arg emote id
function dialogue_emote_bubble(_object, _emote)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_emote_bubble_queue; else _obj =  obj_dialogue_emote_bubble;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		emote = _emote;
	}
}
///@description queue an object fade out
///@arg object id
///@arg fade out rate
function dialogue_fade_out(_object, _rate)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_fade_out_queue; else _obj =  obj_dialogue_fade_out;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		rate = _rate;
	}
}
///@description queue an object fade in
///@arg object id
///@arg fade in rate
function dialogue_fade_in(_object, _rate)
{
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_fade_in_queue; else _obj =  obj_dialogue_fade_in;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		rate = _rate;
	}
}

///@description queue an object to start following a path
///@arg object id
///@arg path path id 
///@arg pathSpeed speed to follow path
///@arg pathEndAction path action constant to follow on path end
///@arg pathAbsolute whether path absolute or not
function dialogue_path_start(_object, _path, _pathSpeed, _pathEndAction, _pathAbsolute) {
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_path_start_queue; else _obj =  obj_dialogue_path_start;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj)
	{
		object = _object;
		path = _path
		pathSpeed = _pathSpeed
		pathEndAction = _pathEndAction
		pathAbsolute = _pathAbsolute
	}
}

// create path based off of point array
function path_create(_points, _loop) {
	var _newPath = path_add()
	for(var _p = 0; _p < array_length(_points); _p++){ 
		var _pX = _points[_p][0]
		var _pY = _points[_p][1]
		path_add_point(_newPath, _pX, _pY, 100)
	}	
	if(_loop) path_set_closed(_newPath, true)
	else path_set_closed(_newPath, false)
	return _newPath
}

function dialogue_shake_start(_magnitude, _speed) {
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_shake_start_queue; else _obj =  obj_dialogue_shake_start;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj) {
		shakeMagnitude = _magnitude
		shakeSpeed = _speed
	}
}
function dialogue_shake_stop() {
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_shake_stop_queue; else _obj =  obj_dialogue_shake_stop;
	if(!layer_exists("text")){ layer_create(0, "text") }
	instance_create_layer(0, 0, "text", _obj)
}

function dialogue_wait(_frames) {
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_wait_queue; else _obj =  obj_dialogue_wait;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj) {
		waitTime = _frames
	}
}	

function dialogue_npc_jump(_object) {
	var _obj;
	if instance_exists(obj_parent_queue_play) _obj = obj_dialogue_npc_jump_queue; else _obj =  obj_dialogue_npc_jump;
	if(!layer_exists("text")){ layer_create(0, "text") }
	with instance_create_layer(0, 0, "text", _obj) {
		object = _object
	}
}

//function scr_set_defaults_for_text(){
//	//fonts
//	font_main = font_add_sprite(spr_main_font, 32, true, 1);
	
//	line_break_pos[0, page_number] = 0;	
//	line_break_num[page_number] = 0;
//	line_break_offset[page_number] = 0;
	
//	//variables for every letter/char
//	for(var c = 0; c < 500; c++){
//		col_1[c, page_number] = c_white;	
//		col_2[c, page_number] = c_white;	
//		col_3[c, page_number] = c_white;	
//		col_4[c, page_number] = c_white;	
		
//		wave_text[c, page_number] = 0;
//		wave_dir[c, page_number] = c*20;
		
//		shake_text[c, page_number] = 0;
//		shake_dir[c, page_number] = irandom(360);
//		shake_timer[c, page_number] = irandom(4);
		
//		font[c, page_number] = font_main;
//	}
	
//	txtb_spr[page_number] = spr_textbox
//	speaker_spr[page_number] = noone;
//	speaker_side[page_number] = 1;
//	snd[page_number] = snd_noise_1;
//}


////-------------text vfx-------------
///// @param first_char
///// @param last_char
///// @param col1
///// @param col2
///// @param col3
///// @param col4
//function scr_text_colour(_start, _end, _col1, _col2, _col3, _col4){
//	for(var c = _start; c <= _end; c++){
//		col_1[c, page_number-1] = _col1;	
//		col_2[c, page_number-1] = _col2;	
//		col_3[c, page_number-1] = _col3;	
//		col_4[c, page_number-1] = _col4;	
//	}
//}

///// @param first_char
///// @param last_char
//function scr_text_wave(_start, _end){
//		for(var c = _start; c <= _end; c++){
//		wave_text[c, page_number - 1] = true;	
//		}
//}

///// @param first_char
///// @param last_char
//function scr_text_shake(_start, _end){
//	for(var c = _start; c <= _end; c++){
//		shake_text[c, page_number - 1] = true; 
//		}
//}


///// @param first_char
///// @param last_char
//function scr_text_font(_start, _end, _font){
//	for(var c = _start; c <= _end; c++){
//		font[c, page_number - 1] = _font;	
//	}
//}

///// @param text
///// @param [portrait]
///// @param [side]
//function scr_text(_text) { 
	
//	scr_set_defaults_for_text();
	 
//	text[page_number] = _text;
	
//	//get character info
//	if argument_count > 1 {
//		switch(argument[1]){
			
//			//--------------Keepo Expressions------------------
//			case "keepo":
//				speaker_spr[page_number] = spr_keepo_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_2;
//				break;
				
//			//--------------Hat Man Expressions------------------
//			case "hat_man":
//				speaker_spr[page_number] = spr_hat_man_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_1;
//				break;
//			case "hat_man-sad":
//				speaker_spr[page_number] = spr_hat_man_portrait_sad;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_1;
//				break;
//			case "hat_man-happy":
//				speaker_spr[page_number] = spr_hat_man_portrait_happy;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_1;
//				break;
				
//			//--------------Blue Expressions------------------
//			case "blue":
//				speaker_spr[page_number] = spr_blue_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_3;
//				break;
				
//			//--------------Blue Expressions------------------
//			case "sleeves":
//				speaker_spr[page_number] = spr_sleeves_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_3;
//				break;	
//			case "sleeves-sad":
//				speaker_spr[page_number] = spr_sleeves_portrait_sad;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_3;
//				break;	
//			case "sleeves-shock":
//				speaker_spr[page_number] = spr_sleeves_portrait_shock;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_3;
//				break;	
				
//			//--------------Hat Man Expressions------------------
//			case "luco":
//				speaker_spr[page_number] = spr_luco_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_4;
//				break;
//			case "luco-shock":
//				speaker_spr[page_number] = spr_luco_portrait_shock;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_voice_4;
//				break;
				
//			//--------------Normal Dude Expressions------------------
//			case "normal_dude":
//				speaker_spr[page_number] = spr_normal_dude_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				break;
				
//			//---------------Frog-------------------------------
//			case "frog":
//				speaker_spr[page_number] = spr_frog_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_ribbit;
//				break;
//			case "jenkins":
//				speaker_spr[page_number] = spr_jenkins_portrait;
//				txtb_spr[page_number] = spr_textbox;
//				snd[page_number] = snd_caw;
//				break;
//		}
		
//		if argument_count > 2 {
//			speaker_side[page_number] = argument[2];	
//		}
//	}
	
//	page_number++;
//}



///// @param option/text
///// @param link id
//function scr_option(_option, _link_id){
//	option[option_number] = _option;
//	option_link_id[option_number] = _link_id;
//	option_number++;
//}



//// @param text_id
//function create_textbox(_text_id){
//	with ( instance_create_depth(0, 0, -9999, obj_textbox)) {
//	scr_game_text(_text_id);
//	}
//}