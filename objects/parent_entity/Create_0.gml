/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;

accept_gift_love = false;
accept_gift_like = false;
accept_gift_dislike = false;
accept_gift_hate = false;
accepting_gift = false;

mail_accept = false;
mail_deny = false;
mail_response = "";

reflection_inst = noone

frameCount = 0;

if charName != 0 && ds_map_exists(global.characterOptions, charName) && entityNPC
{
	var _room = global.characterOptions[? charName][? "room"]
	var _x = global.characterOptions[? charName][? "x"]
	var _y = global.characterOptions[? charName][? "y"]
	var _script = global.characterOptions[? charName][? "script"]
	var _args = global.characterOptions[? charName][? "args"]
	var _sprite = global.characterOptions[? charName][? "sprite"]
	
	// commented out for now
	// prevents followers from staying spawned when enter new room
	if _room != room instance_destroy()
	else 
	{
		if _x != x x = _x;
		if _y != y y = _y;
	}
	
	if _script != entityActivateScript entityActivateScript = _script;
	if _args != entityActivateArgs entityActivateArgs = _args;
	if _sprite != sprite_index sprite_index = _sprite;
}
else
{
	global.characterOptions[? charName] = ds_map_create();
	global.characterOptions[? charName][? "room"] = room
	global.characterOptions[? charName][? "x"] = x
	global.characterOptions[? charName][? "y"] = y
	global.characterOptions[? charName][? "script"] = entityActivateScript
	global.characterOptions[? charName][? "args"] = entityActivateArgs
	global.characterOptions[? charName][? "sprite"] = sprite_index;
}

event_register_script(event.playerEmoteBubbleHeart, id, npcHeartResponse, id)