/// @description Insert description here
// You can write your code in this editor

z = 0
jumping = false
jump_height = 5
jump_speed = 1
y_jump = y

accept_gift_love = false;
accept_gift_like = false;
accept_gift_dislike = false;
accept_gift_hate = false;
accepting_gift = false;

mail_accept = false;
mail_deny = false;
mail_response = "";

reflection_inst = noone

frame_count = 0;

if char_name != 0 && ds_map_exists(global.character_options, char_name) && entity_npc
{
	var _room = global.character_options[? char_name][? "room"]
	var _x = global.character_options[? char_name][? "x"]
	var _y = global.character_options[? char_name][? "y"]
	var _script = global.character_options[? char_name][? "script"]
	var _args = global.character_options[? char_name][? "args"]
	var _sprite = global.character_options[? char_name][? "sprite"]
	
	// commented out for now
	// prevents followers from staying spawned when enter new room
	if _room != room instance_destroy()
	else 
	{
		if _x != x x = _x;
		if _y != y y = _y;
	}
	
	if _script != entity_activate_script entity_activate_script = _script;
	if _args != entity_activate_args entity_activate_args = _args;
	if _sprite != sprite_index sprite_index = _sprite;
}
else
{
	global.character_options[? char_name] = ds_map_create();
	global.character_options[? char_name][? "room"] = room
	global.character_options[? char_name][? "x"] = x
	global.character_options[? char_name][? "y"] = y
	global.character_options[? char_name][? "script"] = entity_activate_script
	global.character_options[? char_name][? "args"] = entity_activate_args
	global.character_options[? char_name][? "sprite"] = sprite_index;
}

event_register_script(event.player_emote_bubble_heart, id, npc_heart_response, id)