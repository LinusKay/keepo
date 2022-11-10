// inherit parent menu object code
event_inherited()

var _count = 0;

if active_quests_num > 0
{
	//display active quests
	for (var i = minQuestsDisplay; i < minQuestsDisplay + maxQuestsDisplay; i++){
			if quests[# 1, i] == -1 {  continue; }
			else {
				textx = x1 + border * 2
				texty = y1 + titleSpace + border + (30 * (_count + 1))
				if questSelected == i {	draw_text(textx, texty, " " + quests[# 0, i]); }
				else{					draw_text(textx, texty,  + quests[# 0, i]);}
			}
		_count++;
	}

	// quest selection
	activeQuestSelected += keyDown - keyUp;
	if keyUp play_sfx(snd_click4);
	if keyDown play_sfx(snd_click4, 0.8);
	
	// if go up on first item select last
	if activeQuestSelected < 0 {
		activeQuestSelected = active_quests_num - 1;
	}
	// if go down on last item select firsts
	if activeQuestSelected > active_quests_num - 1{
		activeQuestSelected = 0;	
		minQuestsDisplay = 0;
	}
	// if moving down requires scrolling down to see, scroll
	if activeQuestSelected >= minQuestsDisplay + maxQuestsDisplay {
		minQuestsDisplay++;	
	}
	// if moving up requires scrolling up to see, scroll
	if activeQuestSelected < minQuestsDisplay {
		minQuestsDisplay--;	
	}

	questSelected = active_quests[activeQuestSelected];

	draw_text_ext(x1 + sideLeftWidth, y1 + 50, quests[# 2, questSelected], 30, sideRightWidth);

	//display quest steps/stages
	var stage = quests[# 1, questSelected]
	var quest_array = quests[# 3, questSelected];
	if quests[# 1, questSelected] != -1
	{
		var _stagecount = 0;
		if stage > 0
		{
			for(var i = 0; i < stage; i++)
			{
				draw_text_ext_color(x1 + sideLeftWidth, y1 + 100 + (50  * (_stagecount+1)), quest_array[i], 30, x2 - x1 - 375 - border, c_gray, c_gray, c_gray, c_gray, 1);
				_stagecount++;
			}
		}
		draw_text_ext(x1 + sideLeftWidth, y1 + 100 + (50 * (_stagecount+1)), quest_array[stage], 30, x2 - x1 - 375 - border);
	}

	if keyboard_check_pressed(ord("F"))
	{
		if ds_list_find_index(global.trackedQuests, questSelected) == -1
		{
			ds_list_add(global.trackedQuests, questSelected);
		}
		else
		{
			ds_list_delete(global.trackedQuests, ds_list_find_index(global.trackedQuests, questSelected))
		}
	}
	
	var questRewards = quests[# 4, questSelected];
	if !(questRewards[0] == -1 && questRewards[1] == -1 && questRewards[2] == -1)
	{
		var rewardString = "";
		var rewardCount = 0;
		if questRewards[0] != -1 {
			rewardString += (string(questRewards[0]) + " coins")
			rewardCount++;
		}
		if questRewards[1] != -1 {
			if rewardCount > 0 rewardString += "\n"
			rewardString += (string(questRewards[1][0]))
			rewardCount++;
		}
		if questRewards[2] != -1 {
			if rewardCount > 0 rewardString += "\n"
			rewardString += (string(global.sprite_set_grid[# 0, questRewards[2]])) + " outfit";
			rewardCount++;
		}
	
		draw_text_ext(x1 + sideLeftWidth, y2 - 20 - (50 * (rewardCount+1)), "REWARDS:", 30, x2 - x1 - 375 - border);
		draw_text_ext(x1 + sideLeftWidth, y2 - 40 - (50 * rewardCount), rewardString , 30, x2 - x1 - 375 - border);
	
	}
	
	if ds_list_find_index(global.trackedQuests, questSelected) == -1
	{
	draw_text_ext(x1 + sideLeftWidth, y2 - 50, "F - track quest ", 30, x2 - x1 - 375 - border);
	}
	else
	{
		draw_text_ext(x1 + sideLeftWidth, y2 - 50, "F - untrack quest ", 30, x2 - x1 - 375 - border);
	}

}