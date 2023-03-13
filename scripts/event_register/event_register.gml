//https://www.youtube.com/watch?v=oubho2n3YAw
///@description event_register_script
///@arg event
///@arg id
///@arg script
///@arg arg1..*


function event_register_script(){

	with(obj_eventmanager)
	{
		var ev = argument[0];
		var objID = argument[1];
	
		if(!ds_map_exists(event_map, ev))
		{
			//add event to event map
			var listener_list = ds_list_create();
			
			//add listener info to event_map
			ds_map_add_list(event_map, ev, listener_list);
		} 
		else
		{
			var listener_list = event_map[? ev];	
		}
		
		//add listener info
		var listener_info;
		
		//add listenerID
		listener_info[0] = objID;
		
		//add script and arguments
		var len = argument_count - 2;
		var i = 0; repeat(len)
		{
			listener_info[i+1] = argument[i+2];
			i++;
		}
		
		//add listener info to listener list
		ds_list_add(listener_list, listener_info);
	}

}