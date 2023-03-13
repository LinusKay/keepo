/// @description Insert description here
// You can write your code in this editor
event_inherited();

if global.mail_unread 
{ 
	if !instance_exists(obj_exclaim) instance_create_depth(obj_mailbox.x - 1, obj_mailbox.y - sprite_get_height(sprite_index) - 3, -9999, obj_exclaim) 
}
else if instance_exists(obj_exclaim) instance_destroy(obj_exclaim);