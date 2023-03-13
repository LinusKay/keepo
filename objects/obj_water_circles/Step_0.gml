if instance_place(x,y,PLAYER_OBJ) 
{
	if frame_count % 12 == 0 && (PLAYER_OBJ.x_spd != 0 || PLAYER_OBJ.y_spd != 0)
	{ 
		instance_create_layer(PLAYER_OBJ.x + 8, PLAYER_OBJ.y + 12, "water_effects", obj_effect_circle)
	}
}
frame_count++;