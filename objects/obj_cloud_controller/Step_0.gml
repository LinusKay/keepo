if frame_count % irandom_range(100,250) == 0 {
	instance_create_layer(
		-300,
		irandom_range(0,room_height), 
		"weather",
		obj_cloud
	);
}
frame_count++;