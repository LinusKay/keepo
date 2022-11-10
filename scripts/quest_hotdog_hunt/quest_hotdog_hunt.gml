function quest_hotdog_hunt_get_dogs(){
	var pickedUp = inventory_get_last_picked_up();
	if pickedUp == "hotdog box"
	{
		global.quest_hotdog_hunt_get_dogs = true;
		return true;
	}
}

function quest_hotdog_hunt_deliver_dogs(){
	if inventory_find_name("hotdog box")
	{
		dialogueResponses("kevin_quest_deliver");
		return true;
	}
	else 
	{
		return false;
	}
}