
//var _fx_time_tint = layer_get_fx(tintEffectLayer)
//fx_set_parameter(_fx_time_tint, "g_Intensity", tint_intensity);
//layer_set_fx(tintEffectLayer, _fx_time_tint);
//print(string(time) + "/" + string(time_cycle) + ": " + string(tint_intensity))

// fire events on sunset start/end
if(time == time_marker_sunset) {
	if(time_direction == time_directions.forwards) {	
		event_fire(event.time_sunset_start)	
	}
	else if(time_direction == time_directions.backwards){
		event_fire(event.time_sunset_end)
	}
}
// sunset tint
if(time >= time_marker_sunset[0] && time <= time_marker_sunset[0] + time_marker_sunset[1]) {
	var _fx_sunset_tint = layer_get_fx(tint_sunset_layer)
	if(time == time_marker_sunset[0] || time == time_marker_sunset[0] + time_marker_sunset[1]) { 
		fx_set_parameter(_fx_sunset_tint, "g_TintCol", sun_colour); 
		}
	if(time <= time_marker_sunset[0]  + (time_marker_sunset[1]/2)) {
		var _sunset_light_level = lerp(0, 1, (time - time_marker_sunset[0])/time_marker_sunset[1])
	}
	else {
		var _sunset_light_level = lerp(1, 0, (time - time_marker_sunset[0])/time_marker_sunset[1])
	}
	fx_set_parameter(_fx_sunset_tint, "g_Intensity", _sunset_light_level);
	layer_set_fx(tint_sunset_layer, _fx_sunset_tint);
}

// fire events on night start/end
if(time == time_marker_night) {
	if(time_direction == time_directions.forwards) {	
		event_fire(event.time_night_start)	
	}
	else if(time_direction == time_directions.backwards){
		event_fire(event.time_night_end)
	}
}

// night tint
if(time >= time_marker_night) {
	tint_intensity = lerp(0, tint_intensity_max, (time - time_marker_night)/(time_cycle - time_marker_night))
	colour_r = lerp(colour_day[0], colour_night[0], tint_intensity)
	colour_g = lerp(colour_day[1], colour_night[1], tint_intensity)
	colour_b = lerp(colour_day[2], colour_night[2], tint_intensity)
	var _fx_time_tint = layer_get_fx(tint_night_layer)
	fx_set_parameter(_fx_time_tint, "g_TintCol", [colour_r, colour_g, colour_b, 1]);
	layer_set_fx(tint_night_layer, _fx_time_tint);
}

//if(time > time_cycle/2){
//	if (time < (time_cycle/4)*3) {
//		var _sunset_light_level = lerp(0, 1, time/time_cycle)
//		var _fx_sunset_tint = layer_get_fx(tint_sunset_layer)
//		fx_set_parameter(_fx_sunset_tint, "g_Intensity", _sunset_light_level);
//		layer_set_fx(tint_sunset_layer, _fx_sunset_tint);
//	}
//	else {
		
//	}
//}

//print(string(time) + "/" + string(time_cycle) + ": " + string(tint_intensity))

if(time_direction = time_directions.forwards) {
	if(time < time_cycle) time++
	if(time == time_cycle) time_direction = time_directions.backwards
	sun_colour = colour_sunset
}
else if(time_direction = time_directions.backwards){
	if(time > 0) time--
	if(time == 0) time_direction = time_directions.forwards
	sun_colour = colour_sunrise
}
