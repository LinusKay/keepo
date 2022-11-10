if place_meeting(x, y, PLAYER_OBJ)
{
	scr_execute_alt(scriptExecute, scriptArgs)
	if deleteAfter
	{
		instance_destroy();
	}
}