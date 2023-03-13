global.character_options[? object.char_name][? "x"] = new_x
global.character_options[? object.char_name][? "y"] = new_y
global.character_options[? object.char_name][? "room"] = new_room

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();
