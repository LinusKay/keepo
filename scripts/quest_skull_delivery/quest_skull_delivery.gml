function quest_skull_delivery(){
	if inventory_find_name("lost skull")
	{
		dialogue_responses("skull_delivered");
		return true;
	}
	else 
	{
		print("skull not in inv");
		return false;
	}
}

function quest_skull_delivery_wizard()
{
	if inventory_find_name("lost skull")
	{
		dialogue_responses("skull_argue");
		return true;
	}
	else 
	{
		return false;
	}
}