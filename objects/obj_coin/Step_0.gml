if ds_list_find_index(global.picked_up_items, coin_room_id) != -1 instance_destroy();	

if distance_to_object(PLAYER_OBJ) < 20 magnetised = true;
if magnetised
{
	x = lerp(x, PLAYER_OBJ.centre_x, .1);
	y = lerp(y, PLAYER_OBJ.centre_y, .1);
}

if place_meeting(x, y, PLAYER_OBJ) 
{
	instance_destroy();
	global.coins += 1;	
	ds_list_add(global.picked_up_items, coin_room_id);
}