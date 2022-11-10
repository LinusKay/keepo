instance_create_layer(object.x, object.y - sprite_get_height(object.sprite_index) - 1, "effects", emote);

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();