if instance_place(x,y,PLAYER_OBJ) 
{
	if frameCount % 12 == 0 && (PLAYER_OBJ.xspd != 0 || PLAYER_OBJ.yspd != 0)
	{ 
		instance_create_layer(PLAYER_OBJ.x + 8, PLAYER_OBJ.y + 12, "water_effects", obj_effect_circle)
	}
}
frameCount++;