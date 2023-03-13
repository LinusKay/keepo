///@description event_fire
///@arg event
function event_fire(){
	with(obj_eventmanager)
	{
		var ev = argument[0];
	
		//check if there is an event entry
		if(ds_map_exists(event_map, ev))
		{
			//get listeners
			var listener_list = event_map[? ev];
			
			var len = ds_list_size(listener_list);
			
			var listener_info, listener, script, args;
			var i = 0; repeat(len)
			{
				//get variables for current listener
				listener_info = listener_list[| i];
				listener = listener_info[0];
				script = listener_info[1];
				
				var len_args = array_length(listener_info) - 2;
				var unregister = false;
				
				if(len_args <= 0)
				{
					if(instance_exists(listener))
					{
						with(listener) unregister = script_execute(script);	
					}
					else unregister = true;
				}
				else
				{
					if(instance_exists(listener))
					{
						args = array_create(len_args, 0);
						array_copy(args, 0, listener_info, 2, len_args);
						with(listener) unregister = scr_execute_alt(script, args);
					}
					else unregister = true;
				}
				
				if unregister
				{
					event_unregister(ev, listener);
					i--;
				}
				
				i++;
			}
		}
	}
}