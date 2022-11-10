if instance_exists(object)
{
	object.entityActivateScript = scr
	object.entityActivateArgs = args
}
if !ds_map_exists(global.characterOptions, object.charName) 
{
	global.characterOptions[? object.charName] = ds_map_create();
	global.characterOptions[? object.charName][? "room"] = room;
	global.characterOptions[? object.charName][? "x"] = object.x;
	global.characterOptions[? object.charName][? "y"] = object.y;
	global.characterOptions[? object.charName][? "script"] = object.entityActivateScript;
	global.characterOptions[? object.charName][? "args"] = object.entityActivateArgs;
}
global.characterOptions[? object.charName][? "script"] = scr
global.characterOptions[? object.charName][? "args"] = args

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();
