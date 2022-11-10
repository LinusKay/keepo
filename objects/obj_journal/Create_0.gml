event_inherited()

quests = obj_quests.ds_quests;
quests_num = obj_quests.ds_quests_number;

minQuestsDisplay = 0;

if quests_num < 15 { questCountDisplay =  quests_num; }
else { questCountDisplay =  15; }

maxQuestsDisplay = minQuestsDisplay + questCountDisplay;

questSelected = 0;

active_quests = [];
for(var i = 0; i < quests_num; i++)
{
	if quests[# 1, i] != -1 array_push(active_quests, i);
}
active_quests_num = array_length(active_quests);
activeQuestSelected = 0;

