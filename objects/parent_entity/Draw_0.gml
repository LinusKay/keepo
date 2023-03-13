if global.debug_mode && entity_npc {
	draw_circle(x, y - sprite_get_height(sprite_index)/2, 25 + sprite_get_height(sprite_index)/2, true)
}

if alert
{
	draw_sprite_ext(spr_exclamation, 0, x, y - sprite_get_height(sprite_index) - 3, 1, 1, 0, c_white, 1);	
}

draw_self();

// reflections
if distance_to_object(obj_water_circles) <= 25 
{
	if reflection_inst == noone {
		reflection_inst = instance_create_layer(x, y, "water_effects", obj_reflection)
	}
	reflection_inst.x = x
	reflection_inst.y = y
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