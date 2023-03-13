if(sway) && global.allow_sway {
	sway_offset = sine_wave(current_time / 1000  + sway_time_offset, sway_speed, 1, 0);
	draw_sprite_pos(sprite_index, image_index, x + sway_offset, y, x + sprite_width + sway_offset, y, x + sprite_width, y+sprite_height, x, y + sprite_height, 1)
}
else {
	draw_self()	
}

// reflections
if distance_to_object(obj_water_circles) <= 25 
{
	if reflection_inst == noone {
		reflection_inst = instance_create_layer(x, y, "water_effects", obj_reflection)
	}
	reflection_inst.x = x
	reflection_inst.y = y +( sprite_height *2)
	reflection_inst.sprite_index = sprite_index
	reflection_inst.image_index = image_index
	reflection_inst.image_xscale = image_xscale
	reflection_inst.image_yscale = image_yscale
	
}
else {
	if reflection_inst != noone {
		instance_destroy(reflection_inst)
		reflection_inst	= noone
	}
}