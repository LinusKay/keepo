if distance_to_object(PLAYER_OBJ) < 10
{ 
	draw_sprite(spr_shadow_item_active, 0, x, spawn_pos);
	draw_set_font(fnt_pixellari_tiny)
	draw_text(x - string_width(item_name)/2 + 4, y - 13, item_name);
	}
else { draw_sprite(spr_shadow_item, 0, x, spawn_pos); }
draw_self();