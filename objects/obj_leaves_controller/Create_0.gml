var chance = irandom_range(0,10);
if chance > -1 {
	event_fire(event.snow_start);
	if !instance_exists(obj_particle_setup) instance_create_layer(0, 0, "weather", obj_particle_setup);
	if !instance_exists(obj_particle_leaves) instance_create_layer(0, 0, "weather", obj_particle_leaves);
	global.raining = true;
}
else
{
	global.raining = false;	
}