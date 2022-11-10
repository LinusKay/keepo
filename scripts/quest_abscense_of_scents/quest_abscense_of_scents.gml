function quest_scents_get_nose(){
	var pickedUp = inventory_get_last_picked_up();
	if pickedUp == "nose"
	{
		global.quest_scents_get_nose = true;
		return true;
	}
}

function quest_scents_deliver_nose(){
	if ds_list_find_value(global.latestGift[1], 0) == "nose"
	{
		if object_get_name(global.latestGift[0].object_index) == "obj_old_man_small"
		{
			global.quest_scents_deliver_nose = true;
			return true;
		}
		else
		{
			global.quest_scents_fail = true;
			return true;
		}
	}
}

