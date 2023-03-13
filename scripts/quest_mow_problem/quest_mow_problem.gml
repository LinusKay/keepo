function quest_mow_problem_get_mower(){
	var pickedUp = inventory_get_last_picked_up();
	if pickedUp == "lawnmower"
	{
		global.quest_mow_problem_get_mower = true;
		return true;
	}
}

function quest_mow_problem_deliver_mower(){
	if ds_list_find_value(global.latest_gift[1], 0) == "lawnmower"
	{
		if object_get_name(global.latest_gift[0].object_index) == "obj_tony"
		{
			
			global.quest_mow_problem_deliver_mower = true;
			return true;
		}
		else
		{
			global.quest_mow_problem_fail = true;
			return true;
		}
	}
}

