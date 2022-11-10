obj_quests.ds_quests[# 1, quest_id]++;
notification("QUEST UPDATED: " + obj_quests.ds_quests[# 0, quest_id]);

if instance_exists(obj_parent_queue)
{
	with obj_parent_queue ticket--;	
}
else {
	PLAYER_OBJ.move_freeze = false;	
	camera_reset();
}
instance_destroy();