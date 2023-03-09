if !instance_exists(obj_textbox) && !instance_exists(obj_text_queued){
	if sprite_index == spr_sleeves_shock {
		if shock_time > 0 {
			shock_time -= 0.5;	
		}
		else {
		sprite_index = spr_sleeves;	
		}
	}
}

if following {
	sprite_index = spr_sleeves_walk	
}
else {
	sprite_index = spr_sleeves	
}

event_inherited();