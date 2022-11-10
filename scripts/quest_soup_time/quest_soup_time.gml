function quest_soup_time_get_soup(){
	var pickedUp = inventory_get_last_picked_up();
	if pickedUp == "soup"
	{
		global.quest_soup_time_get_soup = true;
		return true;
	}
}

function quest_soup_time_deliver_soup(){
	if gift_check("obj_sleeves", "soup")
	{
		global.quest_soup_time_deliver_soup = true;
		return true;
	}
}

