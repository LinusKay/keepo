if instance_exists(object)
{
	object.entity_activate_script = scr
	object.entity_activate_args = args
}
if !ds_map_exists(global.character_options, object.char_name) 
{
	global.character_options[? object.char_name] = ds_map_create();
	global.character_options[? object.char_name][? "room"] = room;
	global.character_options[? object.char_name][? "x"] = object.x;
	global.character_options[? object.char_name][? "y"] = object.y;
	global.character_options[? object.char_name][? "script"] = object.entity_activate_script;
	global.character_options[? object.char_name][? "args"] = object.entity_activate_args;
}
global.character_options[? object.char_name][? "script"] = scr
global.character_options[? object.char_name][? "args"] = args

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();
