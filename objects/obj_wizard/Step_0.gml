if sprite_index == spr_wizard_sleep 
{
	zzz_timer--;
	if zzz_timer <= 0{
		instance_create_layer(x - sprite_get_width(sprite_index)/2 + 20 - irandom_range(-10,10), y - sprite_get_height(sprite_index) + 20 - irandom_range(0,10), "effects", obj_zzz);
		zzz_timer = zzz_default_timer;
	}	
}

if shock_time > 0 {
	shock_time -= 0.5;	
	sprite_index = spr_wizard_shock;
}
else if shock_time = 0 {
	sprite_index = spr_wizard_sleep;	
	shock_time -= 0.5;	
}