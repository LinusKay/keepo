time_cycle_seconds = 5 * 60 // set time cycle length
time_cycle = time_cycle_seconds/2 * 60

time = 0
time_direction = time_directions.forwards
tint_night_layer = "EffectTimeNight"
tint_sunset_layer = "EffectTimeSunset"
tint_intensity = 0
tint_intensity_max = 1
colour_day = [1, 1, 1, 1]
colour_sunset = [255, 127, 51, 0]
colour_sunrise = [255, 7, 7, 0]
sun_colour = colour_sunset
colour_night = [0.4, 0.5, 1, 1]

// [start time, duration]
time_marker_sunset = [time_cycle/2, time_cycle/3]
time_marker_night = time_marker_sunset[0]

enum time_directions {
	forwards,
	backwards,
	stop
}


event_register_script(event.time_night_start, id, time_night_start);
event_register_script(event.time_night_end, id, time_night_end);
event_register_script(event.time_sunset_start, id, time_sunset_start);
event_register_script(event.time_sunset_end, id, time_sunset_end);