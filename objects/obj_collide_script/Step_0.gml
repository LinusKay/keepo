if instance_place(x, y, PLAYER_OBJ)
{
	scr_execute_alt(target_script, script_args)
	if delete_after
	{
		instance_destroy();
	}
}