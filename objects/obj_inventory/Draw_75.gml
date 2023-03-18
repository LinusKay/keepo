event_inherited()

var _count = 0;

// only handle displaying/selecting items if any exist in inv
//if inventory_get_size() > 0 {
//	for (var i = min_items_display; i < min_items_display + max_items_display; i++){
//		var _item_x = x1 + border * 2
//		var _item_y = y1 + title_space + 30 + (30 * (_count + 1))
//		if inventory_is_letter(inventory_get_item(i)){
//			if item_selected == i {	
//				draw_text(_item_x, _item_y, " "); 
//				draw_sprite_ext(spr_letter, 0, x1 + border * 2 + 25, y1 + 30 + (30 * (_count + 1)), 4, 4, 0, c_white, 1);
//				draw_text(_item_x + 70, _item_y, inventory_get_item_name(i)); 
				
//			}
//			else{
//				draw_sprite_ext(spr_letter, 0, x1 + border * 2,  y1 + 30 + (30 * (_count + 1)), 4, 4, 0, c_white, 1);
//				draw_text(x1 + border * 2 + 45, y1 + 30 + (30 * (_count + 1)), inventory_get_item_name(i));
//			}		
//		}
//		else{
//			if item_selected == i {	draw_text(_item_x, _item_y, " " + inventory_get_item_name(i)); }
//			else{					draw_text(_item_x, _item_y, inventory_get_item_name(i));}
			
//		}
//		_count++;
//	}
	

//	// item selection
//	item_selected += key_down - key_up;
//	if key_up play_sfx(snd_click4);
//	if key_down play_sfx(snd_click4, 0.8);
	
//	// if go up on first item select last
//	if item_selected < 0 {
//		item_selected = inventory_get_size() - 1;
//		min_items_display = inventory_get_size() - item_count_display;
//	}
//	// if go down on last item select first
//	if item_selected > inventory_get_size() - 1{
//		item_selected = 0;	
//		min_items_display = 0;
//	}
//	// if moving down requires scrolling down to see, scroll
//	if item_selected >= min_items_display + max_items_display {
//		min_items_display++;	
//	}
//	// if moving up requires scrolling up to see, scroll
//	if item_selected < min_items_display {
//		min_items_display--;	
//	}
	
//	draw_sprite_ext(inventory_get_item_sprite(item_selected), 0, x1 + 550, y1 + 50, 10, 10, 0, c_white, 1);
	
//	if inventory_is_letter(inventory_get_item(item_selected)) { 
//		draw_text_ext(x1 + 300, y1 + 150, 
//		"From: " + inventory_get_letter_sender(item_selected) + "\n" +
//		"To: " + inventory_get_letter_recipient(item_selected) + "\n\n" +
//		inventory_get_item_description(item_selected),
//		30, side_right_width) 
//	}
//	else {
//		draw_text_ext(x1 + side_left_width, y1 + 150, inventory_get_item_description(item_selected), 30, side_right_width);
//		if inventory_check_item_quest(item_selected) 
//		{
//			if obj_quests.ds_quests[# 1, inventory_get_item_quest_id(item_selected)] == inventory_get_item_quest_stage(item_selected)
//			{
//				draw_text_ext(x1 + side_left_width, y2 - 150, "Quest item: " + obj_quests.ds_quests[# 0, inventory_get_item_quest_id(item_selected)], 30, side_right_width);
//			}
//			else
//			{
//				draw_text_ext(x1 + side_left_width, y2 - 150, "Quest item: ???", 30, side_right_width);
//			}
//			if global.debug_mode
//			{
//				draw_text(20, 20, "Quest ID: " + obj_quests.ds_quests[# 0, inventory_get_item_quest_id(item_selected)] );
//				draw_text(20, 50, "Quest Stage: " + string(inventory_get_item_quest_stage(item_selected)));
//			}
//		}
//		else
//		{
//			if inventory_get_item_gift(item_selected) draw_text_ext(x1 + side_left_width, y2 - 150, "Can be gifted.", 30, side_right_width);
//			else draw_text_ext(x1 + side_left_width, y2 - 150, "Cannot be gifted", 30, side_right_width);
//		}
		
//		// DISPLAY SPRITES SHOWING WHO LOVES/LIKES/ETC THE GIVEN ITEM
//		if global.debug_mode
//		{
//			var loved_by = json_parse(string(inventory_get_item_love(item_selected)));
//			if array_length(loved_by) > 0 {
//				draw_text_ext(x1 + 300, y1 + 250, "Loved by: ", 30, x2 - x1 - 300 - border);
//				for(var i = 0; i < array_length(loved_by); i++)
//				{	
//					if scr_check_num(loved_by[i])
//					draw_sprite_ext(object_get_sprite(loved_by[i]), 0, x1 + 470 + (50 * i), y1 + 290, 3, 3, 0, c_white, 1);
//				}
//			}
		
//			var liked_by = json_parse(string(inventory_get_item_like(item_selected)));
//			if array_length(liked_by) > 0 {
//				draw_text_ext(x1 + 300, y1 + 300, "Liked by: ", 30, x2 - x1 - 300 - border);
//				for(var i = 0; i < array_length(liked_by); i++)
//				{
//					if scr_check_num(liked_by[i])
//					draw_sprite_ext(object_get_sprite(liked_by[i]), 0, x1 + 470 + (50 * i), y1 + 340, 3, 3, 0, c_white, 1);
//				}
//			}
		
//			var disliked_by = json_parse(string(inventory_get_item_dislike(item_selected)));
//			if array_length(disliked_by) > 0 {
//				draw_text_ext(x1 + 300, y1 + 350, "Disliked by: ", 30, x2 - x1 - 300 - border);
//				for(var i = 0; i < array_length(disliked_by); i++)
//				{
//					draw_sprite_ext(object_get_sprite(disliked_by[i]), 0, x1 + 470 + (50 * i), y1 + 390, 3, 3, 0, c_white, 1);
//				}
//			}
		
//			var hated_by = json_parse(string(inventory_get_item_hate(item_selected)));
//			if array_length(hated_by) > 0 {
//				draw_text_ext(x1 + 300, y1 + 400, "Hated by: ", 30, x2 - x1 - 300 - border);
//				for(var i = 0; i < array_length(hated_by); i++)
//				{
//					draw_sprite_ext(object_get_sprite(hated_by[i]), 0, x1 + 470 + (50 * i), y1 + 440, 3, 3, 0, c_white, 1);
//				}
//			}
//		}
//	}
	
//	draw_text_ext(x1 + side_left_width, y2 - 80, "F - hold item  |  X - un-hold item", 30, side_right_width);
	
//	if keyboard_check_pressed(ord("F"))
//	{
//		PLAYER_OBJ.holding_item = true;
//		PLAYER_OBJ.held_item = inventory_get_item(item_selected);
//		PLAYER_OBJ.move_freeze = false;
//		global.window_open = false;
//		instance_destroy();
//	}
	
//}