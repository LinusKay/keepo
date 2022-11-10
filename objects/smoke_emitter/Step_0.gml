if frameCount % irandom_range(5,10) == 0 {
	instance_create_depth(
		x + random_range(-spawn_distance, spawn_distance), 
		y + random_range(-spawn_distance, spawn_distance), 
		99, obj_smoke)
}
frameCount++;
