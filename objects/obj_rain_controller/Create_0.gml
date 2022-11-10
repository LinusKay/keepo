var chance = irandom_range(0,10);
if chance > 5 {
	event_fire(event.rainStart);
	if layer_exists(layer_get_id("rain_filter")) layer_set_visible(layer_get_id("rain_filter"), true);
	if !instance_exists(obj_particle_setup) instance_create_layer(0, 0, "weather", obj_particle_setup);
	if !instance_exists(obj_particle_rain) instance_create_layer(0, 0, "weather", obj_particle_rain);
	if !instance_exists(obj_cloud_controller) instance_create_layer(0, 0, "weather", obj_cloud_controller);
	global.raining = true;
}
else
{
	global.raining = false;	
}