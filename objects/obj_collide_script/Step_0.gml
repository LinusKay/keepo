if place_meeting(x, y, PLAYER_OBJ)
{
	scr_execute_alt(script_execute1, script_args)
	if delete_after
	{
		instance_destroy();
	}
}