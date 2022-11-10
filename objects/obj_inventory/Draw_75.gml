event_inherited()

var _count = 0;

// only handle displaying/selecting items if any exist in inv
if inventory_get_size() > 0 {
	for (var i = minItemsDisplay; i < minItemsDisplay + maxItemsDisplay; i++){
		var _itemx = x1 + border * 2
		var _itemy = y1 + titleSpace + 30 + (30 * (_count + 1))
		if inventory_is_letter(inventory_get_item(i)){
			if itemSelected == i {	
				draw_text(_itemx, _itemy, " "); 
				draw_sprite_ext(spr_letter, 0, x1 + border * 2 + 25, y1 + 30 + (30 * (_count + 1)), 4, 4, 0, c_white, 1);
				draw_text(_itemx + 70, _itemy, inventory_get_item_name(i)); 
				
			}
			else{
				draw_sprite_ext(spr_letter, 0, x1 + border * 2,  y1 + 30 + (30 * (_count + 1)), 4, 4, 0, c_white, 1);
				draw_text(x1 + border * 2 + 45, y1 + 30 + (30 * (_count + 1)), inventory_get_item_name(i));
			}		
		}
		else{
			if itemSelected == i {	draw_text(_itemx, _itemy, " " + inventory_get_item_name(i)); }
			else{					draw_text(_itemx, _itemy, inventory_get_item_name(i));}
			
		}
		_count++;
	}
	

	// item selection
	itemSelected += keyDown - keyUp;
	if keyUp play_sfx(snd_click4);
	if keyDown play_sfx(snd_click4, 0.8);
	
	// if go up on first item select last
	if itemSelected < 0{
		itemSelected = inventory_get_size() - 1;
		minItemsDisplay = inventory_get_size() - itemCountDisplay;
	}
	// if go down on last item select first
	if itemSelected > inventory_get_size() - 1{
		itemSelected = 0;	
		minItemsDisplay = 0;
	}
	// if moving down requires scrolling down to see, scroll
	if itemSelected >= minItemsDisplay + maxItemsDisplay {
		minItemsDisplay++;	
	}
	// if moving up requires scrolling up to see, scroll
	if itemSelected < minItemsDisplay {
		minItemsDisplay--;	
	}
	
	draw_sprite_ext(inventory_get_item_sprite(itemSelected), 0, x1 + 550, y1 + 50, 10, 10, 0, c_white, 1);
	
	if inventory_is_letter(inventory_get_item(itemSelected)) { 
		draw_text_ext(x1 + 300, y1 + 150, 
		"From: " + inventory_get_letter_sender(itemSelected) + "\n" +
		"To: " + inventory_get_letter_recipient(itemSelected) + "\n\n" +
		inventory_get_item_description(itemSelected),
		30, sideRightWidth) 
	}
	else {
		draw_text_ext(x1 + sideLeftWidth, y1 + 150, inventory_get_item_description(itemSelected), 30, sideRightWidth);
		if inventory_check_item_quest(itemSelected) 
		{
			if obj_quests.ds_quests[# 1, inventory_get_item_quest_id(itemSelected)] == inventory_get_item_quest_stage(itemSelected)
			{
				draw_text_ext(x1 + sideLeftWidth, y2 - 150, "Quest item: " + obj_quests.ds_quests[# 0, inventory_get_item_quest_id(itemSelected)], 30, sideRightWidth);
			}
			else
			{
				draw_text_ext(x1 + sideLeftWidth, y2 - 150, "Quest item: ???", 30, sideRightWidth);
			}
			if global.debugMode
			{
				draw_text(20, 20, "Quest ID: " + obj_quests.ds_quests[# 0, inventory_get_item_quest_id(itemSelected)] );
				draw_text(20, 50, "Quest Stage: " + string(inventory_get_item_quest_stage(itemSelected)));
			}
		}
		else
		{
			if inventory_get_item_gift(itemSelected) draw_text_ext(x1 + sideLeftWidth, y2 - 150, "Can be gifted.", 30, sideRightWidth);
			else draw_text_ext(x1 + sideLeftWidth, y2 - 150, "Cannot be gifted", 30, sideRightWidth);
		}
		
		// DISPLAY SPRITES SHOWING WHO LOVES/LIKES/ETC THE GIVEN ITEM
		if global.debugMode
		{
			var lovedBy = json_parse(string(inventory_get_item_love(itemSelected)));
			if array_length(lovedBy) > 0 {
				draw_text_ext(x1 + 300, y1 + 250, "Loved by: ", 30, x2 - x1 - 300 - border);
				for(var i = 0; i < array_length(lovedBy); i++)
				{	
					if scr_check_num(lovedBy[i])
					draw_sprite_ext(object_get_sprite(lovedBy[i]), 0, x1 + 470 + (50 * i), y1 + 290, 3, 3, 0, c_white, 1);
				}
			}
		
			var likedBy = json_parse(string(inventory_get_item_like(itemSelected)));
			if array_length(likedBy) > 0 {
				draw_text_ext(x1 + 300, y1 + 300, "Liked by: ", 30, x2 - x1 - 300 - border);
				for(var i = 0; i < array_length(likedBy); i++)
				{
					if scr_check_num(likedBy[i])
					draw_sprite_ext(object_get_sprite(likedBy[i]), 0, x1 + 470 + (50 * i), y1 + 340, 3, 3, 0, c_white, 1);
				}
			}
		
			var dislikedBy = json_parse(string(inventory_get_item_dislike(itemSelected)));
			if array_length(dislikedBy) > 0 {
				draw_text_ext(x1 + 300, y1 + 350, "Disliked by: ", 30, x2 - x1 - 300 - border);
				for(var i = 0; i < array_length(dislikedBy); i++)
				{
					draw_sprite_ext(object_get_sprite(dislikedBy[i]), 0, x1 + 470 + (50 * i), y1 + 390, 3, 3, 0, c_white, 1);
				}
			}
		
			var hatedBy = json_parse(string(inventory_get_item_hate(itemSelected)));
			if array_length(hatedBy) > 0 {
				draw_text_ext(x1 + 300, y1 + 400, "Hated by: ", 30, x2 - x1 - 300 - border);
				for(var i = 0; i < array_length(hatedBy); i++)
				{
					draw_sprite_ext(object_get_sprite(hatedBy[i]), 0, x1 + 470 + (50 * i), y1 + 440, 3, 3, 0, c_white, 1);
				}
			}
		}
	}
	
	draw_text_ext(x1 + sideLeftWidth, y2 - 80, "F - hold item  |  X - un-hold item", 30, sideRightWidth);
	
	if keyboard_check_pressed(ord("F"))
	{
		PLAYER_OBJ.holding_item = true;
		PLAYER_OBJ.held_item = inventory_get_item(itemSelected);
		PLAYER_OBJ.move_freeze = false;
		global.windowOpen = false;
		instance_destroy();
	}
	
}