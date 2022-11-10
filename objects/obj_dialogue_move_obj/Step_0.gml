global.characterOptions[? object.charName][? "x"] = newX
global.characterOptions[? object.charName][? "y"] = newY
global.characterOptions[? object.charName][? "room"] = newRoom

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();
