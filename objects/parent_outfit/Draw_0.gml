if distance_to_object(PLAYER_OBJ) < 10
{ 
	draw_sprite(spr_shadow_item_active, 0, x, spawnPos);
	draw_set_font(fnt_block_sans_tiny)
	draw_text(x - string_width(itemName)/2 + 4, y - 13, itemName);
	}
else { draw_sprite(spr_shadow_item, 0, x, spawnPos); }
draw_self();