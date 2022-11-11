timeCycleSeconds = 5 * 60 // set time cycle length
timeCycle = timeCycleSeconds/2 * 60

time = 0
timeDirection = timeDirections.forwards
tintNightLayer = "EffectTimeNight"
tintSunsetLayer = "EffectTimeSunset"
tintIntensity = 0
tintIntensityMax = 1
colourDay = [1, 1, 1, 1]
colourSunset = [255, 127, 51, 0]
colourSunrise = [255, 7, 7, 0]
sunColour = colourSunset
colourNight = [0.4, 0.5, 1, 1]

// [start time, duration
timeMarkerSunset = [timeCycle/2, timeCycle/3]
timeMarkerNight = timeMarkerSunset[0]

enum timeDirections {
	forwards,
	backwards,
	stop
}


event_register_script(event.timeNightStart, id, time_night_start);
event_register_script(event.timeNightEnd, id, time_night_end);
event_register_script(event.timeSunsetStart, id, time_sunset_start);
event_register_script(event.timeSunsetEnd, id, time_sunset_end);