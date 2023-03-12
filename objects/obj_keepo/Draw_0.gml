draw_self();
if holding_item {
	draw_sprite(ds_list_find_value(held_item, 3), image_index, x + 4, y - 7);
}



if global.debug_mode
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

if shoot_mode == "precise"
{
	if key_click_left && bullet_cooldown == 0
		{
			angle = point_direction(centre_x, centre_y, mouse_x, mouse_y);
			aim_distance = clamp(point_distance(centre_x, centre_y, mouse_x, mouse_y), 0, global.bullet_range * global.bullet_speed);
			draw_line_width_color(centre_x, centre_y, centre_x + lengthdir_x(aim_distance, angle), centre_y + lengthdir_y(aim_distance, angle), 1, c_red, c_red)
		}
}

