function quest_ravioli_rumble_get_recipe(){
	var pickedUp = inventory_get_last_picked_up();
	if pickedUp == "luco's ravioli recipe"
	{
		global.quest_ravioli_rumble_get_recipe = true;
		return true;
	}
}

function quest_ravioli_rumble_deliver_recipe(){
	if gift_check("obj_pyramid", "luco's ravioli recipe")
	{
		global.quest_ravioli_rumble_deliver_recipe = true;
		return true;
	}
	else if gift_check("obj_sleeves", "luco's ravioli recipe")
	{
		global.quest_ravioli_rumble_fail = true;
		return true;
	}
	else if gift_check("obj_blue", "luco's ravioli recipe")
	{
		global.quest_ravioli_rumble_fail = true;
		return true;
	}
	else if gift_check("obj_hat_man", "luco's ravioli recipe")
	{
		global.quest_ravioli_rumble_fail = true;
		return true;
	}
}

