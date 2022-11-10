if distance_to_object(PLAYER_OBJ) < 10
{ 
	draw_sprite(spr_shadow_item_active, 0, x, spawnPos);
	draw_set_font(fnt_pixellari_small)
	if forSale
	{
		draw_text(x - string_width("price: " + string(itemCost))/2 + 4, y - sprite_get_height(sprite_index) * 2 - spacer, "price: " + string(itemCost));
		//draw_text(x - string_width(itemName)/2 + 4, y - sprite_get_height(sprite_index) - spacer, itemName);
		
	}
	//else draw_text( - string_width(itemName)/2 + 4, y - 13, itemName);
	
	}
else { draw_sprite(spr_shadow_item, 0, x, spawnPos); }
draw_self();