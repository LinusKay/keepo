event_inherited()

quests = obj_quests.ds_quests;
quests_num = obj_quests.ds_quests_number;

min_quests_display = 0;

if quests_num < 15 { quest_count_display =  quests_num; }
else { quest_count_display =  15; }

max_quests_display = min_quests_display + quest_count_display;

quest_selected = 0;

active_quests = [];
for(var i = 0; i < quests_num; i++)
{
	if quests[# 1, i] != -1 array_push(active_quests, i);
}
active_quests_num = array_length(active_quests);
active_quest_selected = 0;

