var grid = ds_quests;

var i = 0; repeat(ds_quests_number)
{
	switch(i)
	{
		#region TEST OUT YOUR DASH
		case quest.test_out_your_dash:
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.playerDashStart, id, quest_dash);
						if global.quest_dashTest == true { 
							grid[# 1, i]++; 
							notification("QUEST UPDATED: " + string(grid[# 0, i]));
							}
					break;
					case 1:
						event_register_script(event.playerDashGapStart, id, quest_dash_gap);
						if global.quest_dashGap == true { 
							grid[# 1, i] = -1; 
							quest_rewards(grid, i);
							event_fire(event.questEnd);
							notification("QUEST COMPLETE: " + string(grid[# 0, i]));
							}
					break;
				}
		break;
		#endregion
		
		#region SOUP TIME
		case quest.soup_time:
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.playerPickUpItem, id, quest_soup_time_get_soup)
						if inventory_find_name("soup") global.quest_soup_time_get_soup = true;
						if global.quest_soup_time_get_soup == true { 
							grid[# 1, i]++; 
							notification("QUEST UPDATED: " + string(grid[# 0, i]));
							}
					break;
					case 1:
						event_register_script(event.playerGiftItem, id, quest_soup_time_deliver_soup)
						if global.quest_soup_time_deliver_soup == true { 
							dialogueResponses("sleeves_soup_give");
							grid[# 1, i] = -1; 
							quest_rewards(grid, i);
							event_fire(event.questEnd);
							notification("QUEST COMPLETE: " + string(grid[# 0, i]));
							}
					break;
				}
		break;
		#endregion
		
		#region RAVIOLI RUMBLE
		case quest.ravioli_rumble:
			if grid[# 1, i] != -1 && global.quest_ravioli_rumble_fail { 
				grid[# 1, i] = -1; 
				notification("QUEST FAILED: " + string(grid[# 0, i]));
				break;
				}
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.playerPickUpItem, id, quest_ravioli_rumble_get_recipe)
						if inventory_find_name("luco's ravioli recipe") global.quest_ravioli_rumble_get_recipe = true;
						if global.quest_ravioli_rumble_get_recipe == true { 
							grid[# 1, i]++; 
							notification("QUEST UPDATED: " + string(grid[# 0, i]));
							}
					break;
					case 1:
						event_register_script(event.playerGiftItem, id, quest_ravioli_rumble_deliver_recipe)
						if global.quest_ravioli_rumble_deliver_recipe == true { 
							dialogueResponses("luco_ravioli_3");
							grid[# 1, i] = -1; 
							quest_rewards(grid, i);
							event_fire(event.questEnd);
							notification("QUEST COMPLETE: " + string(grid[# 0, i]));
							}
					break;
				}
		break;
		#endregion
		
		#region ABSENCE OF SCENTS
		case quest.abscence_of_scents:
		if grid[# 1, i] != -1 && global.quest_scents_fail  { 
				grid[# 1, i] = -1; 
				notification("QUEST FAILED: " + string(grid[# 0, i]));
				break;
				}
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.playerPickUpItem, id, quest_mow_problem)
						if inventory_find_name("nose") global.quest_scents_get_nose = true;
						if global.quest_scents_get_nose == true { 
							grid[# 1, i]++; 
							notification("QUEST UPDATED: " + string(grid[# 0, i]));
							}
					break;
					case 1:
						event_register_script(event.playerGiftItem, id, quest_scents_deliver_nose)
						if global.quest_scents_deliver_nose == true { 
							dialogueResponses("old_man_accept_nose");
							grid[# 1, i] = -1; 
							quest_rewards(grid, i);
							event_fire(event.questEnd);
							notification("QUEST COMPLETE: " + string(grid[# 0, i]));
							}
					break;
				}
		break;
		#endregion
		
		#region GETTING FIT
		case quest.getting_fit:
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.outfitChange, id, quest_getting_fit)
						if global.quest_getting_fit == true { 
							grid[# 1, i] = -1; 
							quest_rewards(grid, i);
							event_fire(event.questEnd);
							notification("QUEST COMPLETE: " + string(grid[# 0, i]));
						}
					break;
				}
		break;
		#endregion
		
		#region SKULL DELIVERY
		case quest.skull_delivery:
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
					break;
					case 1:
						grid[# 1, i] = -1; 
						quest_rewards(grid, i);
						event_fire(event.questEnd);
						notification("QUEST COMPLETE: " + string(grid[# 0, i]));
					break;
				}
		break;
		#endregion
		
		#region HOTDOG HUNT
		case quest.hotdog_hunt:
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
						event_register_script(event.playerPickUpItem, id, quest_hotdog_hunt_get_dogs)
						if inventory_find_name("hotdog box") global.quest_hotdog_hunt_get_dogs = true;
						if global.quest_hotdog_hunt_get_dogs == true { 
							grid[# 1, i]++; 
							notification("QUEST UPDATED: " + string(grid[# 0, i]));
							}
						break;
					case 1: break;
					case 2:
						grid[# 1, i] = -1; 
						quest_rewards(grid, i);
						event_fire(event.questEnd);
						notification("QUEST COMPLETE: " + string(grid[# 0, i]));
					break;
				}
		break;
		#endregion
		
 		#region MOW PROBLEM
		//case quest.mow_problem:
		//	switch(grid[# 1, i])
		//		{
		//			case 0:
		//				event_fire(event.questStart);
		//				event_register_script(event.playerPickUpItem, id, quest_mow_problem_get_mower)
		//				if inventory_find_name("lawnmower") global.quest_mow_problem_get_mower = true;
		//				if global.quest_mow_problem_get_mower == true { 
		//					grid[# 1, i]++; 
		//					notification("QUEST UPDATED: " + string(grid[# 0, i]));
		//					}
		//				break;
		//			case 1:
		//				event_register_script(event.playerGiftItem, id, quest_mow_problem_deliver_mower)
		//				if global.quest_mow_problem_deliver_mower == true { 
		//					dialogueResponses("tony_give_lawnmower");
		//					grid[# 1, i] = -1; 
		//					quest_rewards(grid, i);
		//					event_fire(event.questEnd);
		//					notification("QUEST COMPLETE: " + string(grid[# 0, i]));
		//					}
		//			break;
		//		}
		//break;
		#endregion
		
		#region DONT BREAK ANYTHING
		case quest.dont_break_anything:
			if grid[# 1, i] != -1 && global.quest_dont_break_anything_fail { 
					grid[# 1, i] = -1; 
					notification("QUEST FAILED: " + string(grid[# 0, i]));
					break;
					}
			switch(grid[# 1, i])
				{
					case 0:
						event_fire(event.questStart);
					break;
					case 1:
						grid[# 1, i] = -1; 
						quest_rewards(grid, i);
						event_fire(event.questEnd);
						notification("QUEST COMPLETE: " + string(grid[# 0, i]));
					break;
				}
		break;
		#endregion
	}
	i++;
}

function quest_rewards(grid, i)
{
	// quest complete, give rewards
	var rewards = grid[# 4, i];
	var coins = rewards[0];
	global.coins += coins;
						
	if rewards[1] != -1
	{
		var item_array = rewards[1];
		if array_length(item_array) == 10
		{
			inventory_add(item_array[0], item_array[1], item_array[2], item_array[3], item_array[4], item_array[5], item_array[6], item_array[7], item_array[8], item_array[9])
			notification("NEW ITEM: " + item_array[0]);
		}
		else
		{
			inventory_add_letter(item_array[0], item_array[1], item_array[2], item_array[3], item_array[4], item_array[5], item_array[6], item_array[7], item_array[8], item_array[9], item_array[10])
		}
	}
	if rewards[2] != -1
	{
		array_push(global.unlocked_outfits, rewards[2]);
		notification("NEW OUTFIT: " + global.sprite_set_grid[# 0, rewards[2]]);
	}
	if rewards[3] != -1
	{
		grid[# 1, rewards[3]] = 0;	
		notification("NEW QUEST: " + grid[# 0, rewards[3]]);
	}
}