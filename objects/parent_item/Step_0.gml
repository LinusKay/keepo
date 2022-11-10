if questItem && frameCount % irandom_range(spark_interval - 5, spark_interval + 5) == 0
{
	instance_create_layer(x + irandom_range(-5, 5), y + irandom_range(-5, 5), "effects", obj_sparkles);	
}

if ds_list_find_index(global.pickedUpItems, item_room_id) != -1 instance_destroy();	
y = y + (dsin(frameCount*2)/30);
frameCount++;