// inherit parent menu object code
event_inherited()

var _count = 0;

if active_quests_num > 0
{
	//display active quests
	for (var i = min_quests_display; i < min_quests_display + max_quests_display; i++){
			if quests[# 1, i] == -1 {  continue; }
			else {
				text_x = x1 + border * 2
				text_y = y1 + title_space + border + (30 * (_count + 1))
				if quest_selected == i {	draw_text(text_x, text_y, " " + quests[# 0, i]); }
				else{					draw_text(text_x, text_y,  + quests[# 0, i]);}
			}
		_count++;
	}

	// quest selection
	active_quest_selected += key_down - key_up;
	if key_up play_sfx(snd_click4);
	if key_down play_sfx(snd_click4, 0.8);
	
	// if go up on first item select last
	if active_quest_selected < 0 {
		active_quest_selected = active_quests_num - 1;
	}
	// if go down on last item select firsts
	if active_quest_selected > active_quests_num - 1{
		active_quest_selected = 0;	
		min_quests_display = 0;
	}
	// if moving down requires scrolling down to see, scroll
	if active_quest_selected >= min_quests_display + max_quests_display {
		min_quests_display++;	
	}
	// if moving up requires scrolling up to see, scroll
	if active_quest_selected < min_quests_display {
		min_quests_display--;	
	}

	quest_selected = active_quests[active_quest_selected];

	draw_text_ext(x1 + side_left_width, y1 + 50, quests[# 2, quest_selected], 30, side_right_width);

	//display quest steps/stages
	var stage = quests[# 1, quest_selected]
	var quest_array = quests[# 3, quest_selected];
	if quests[# 1, quest_selected] != -1
	{
		var _stage_count = 0;
		if stage > 0
		{
			for(var i = 0; i < stage; i++)
			{
				draw_text_ext_color(x1 + side_left_width, y1 + 100 + (50  * (_stage_count+1)), quest_array[i], 30, x2 - x1 - 375 - border, c_gray, c_gray, c_gray, c_gray, 1);
				_stage_count++;
			}
		}
		draw_text_ext(x1 + side_left_width, y1 + 100 + (50 * (_stage_count+1)), quest_array[stage], 30, x2 - x1 - 375 - border);
	}

	if keyboard_check_pressed(ord("F"))
	{
		if ds_list_find_index(global.tracked_quests, quest_selected) == -1
		{
			ds_list_add(global.tracked_quests, quest_selected);
		}
		else
		{
			ds_list_delete(global.tracked_quests, ds_list_find_index(global.tracked_quests, quest_selected))
		}
	}
	
	var quest_rewards = quests[# 4, quest_selected];
	if !(quest_rewards[0] == -1 && quest_rewards[1] == -1 && quest_rewards[2] == -1)
	{
		var reward_string = "";
		var reward_count = 0;
		if quest_rewards[0] != -1 {
			reward_string += (string(quest_rewards[0]) + " coins")
			reward_count++;
		}
		if quest_rewards[1] != -1 {
			if reward_count > 0 reward_string += "\n"
			reward_string += (string(quest_rewards[1][0]))
			reward_count++;
		}
		if quest_rewards[2] != -1 {
			if reward_count > 0 reward_string += "\n"
			reward_string += (string(global.sprite_set_grid[# 0, quest_rewards[2]])) + " outfit";
			reward_count++;
		}
	
		draw_text_ext(x1 + side_left_width, y2 - 20 - (50 * (reward_count+1)), "REWARDS:", 30, x2 - x1 - 375 - border);
		draw_text_ext(x1 + side_left_width, y2 - 40 - (50 * reward_count), reward_string , 30, x2 - x1 - 375 - border);
	
	}
	
	if ds_list_find_index(global.tracked_quests, quest_selected) == -1
	{
	draw_text_ext(x1 + side_left_width, y2 - 50, "F - track quest ", 30, x2 - x1 - 375 - border);
	}
	else
	{
		draw_text_ext(x1 + side_left_width, y2 - 50, "F - untrack quest ", 30, x2 - x1 - 375 - border);
	}

}