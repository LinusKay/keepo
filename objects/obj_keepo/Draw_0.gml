draw_self();
if holding_item {
	draw_sprite(ds_list_find_value(held_item, 3), image_index, x + 4, y - 7);
}

// reflections
//if distance_to_object(obj_water_circles) <= 25 
//{
//	if reflection_inst == noone {
//		reflection_inst = instance_create_layer(x, y + 32, "water_effects", obj_reflection)
//	}
//	reflection_inst.x = x
//	reflection_inst.y = y + 32
//	reflection_inst.sprite_index = sprite_index
//	reflection_inst.image_index = image_index
//	reflection_inst.image_xscale = image_xscale
//	reflection_inst.image_yscale = image_yscale
	
//}
//else {
//	if reflection_inst != noone {
//		instance_destroy(reflection_inst)
//		reflection_inst	= noone
//	}
//}

if global.debugMode
{
	draw_line(centre_x, centre_y, mouse_x, mouse_y);
	
	if place_meeting(mouse_x, mouse_y, parent_entity)
	{
		print("hovering entity")
		hovered_entity = instance_place(mouse_x, mouse_y, parent_entity)
		{
			angle = point_direction(centre_x, centre_y, hovered_entity.x, hovered_entity.y);
			aim_distance = point_distance(centre_x, centre_y, hovered_entity.x, hovered_entity.y);
			draw_line_width_color(centre_x, centre_y, centre_x + lengthdir_x(aim_distance, angle), centre_y + lengthdir_y(aim_distance, angle), 1, c_white, c_white)
		}
	}
}

if shootMode == "precise"
{
	if key_click_left && bulletCooldown == 0
		{
			angle = point_direction(centre_x, centre_y, mouse_x, mouse_y);
			aim_distance = clamp(point_distance(centre_x, centre_y, mouse_x, mouse_y), 0, global.bulletRange * global.bulletSpeed);
			draw_line_width_color(centre_x, centre_y, centre_x + lengthdir_x(aim_distance, angle), centre_y + lengthdir_y(aim_distance, angle), 1, c_red, c_red)
		}
}

