if quest_item && frame_count % irandom_range(spark_interval - 5, spark_interval + 5) == 0
{
	instance_create_layer(x + irandom_range(-5, 5), y + irandom_range(-5, 5), "effects", obj_sparkles);	
}

if ds_list_find_index(global.picked_up_items, item_room_id) != -1 instance_destroy();	
y = y + (dsin(frame_count*2)/30);
frame_count++;