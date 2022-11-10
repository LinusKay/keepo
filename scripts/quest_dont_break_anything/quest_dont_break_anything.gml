function quest_dont_break_anything(){
	if obj_quests.ds_quests[# 1, quest.dont_break_anything] != -1
	{
		obj_quests.ds_quests[# 1, quest.dont_break_anything] = 1;
	}
}