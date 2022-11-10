if distance_to_object(obj_water_circles) < 25
{
	if(sprite_index == spr_negri) { draw_sprite_ext(spr_negri_red, image_index, x, y, image_xscale, -image_yscale, 0, c_white, 0.6) }
	else {draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, -image_yscale, 0, c_white, 0.6) }
}