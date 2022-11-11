
//var _fx_time_tint = layer_get_fx(tintEffectLayer)
//fx_set_parameter(_fx_time_tint, "g_Intensity", tintIntensity);
//layer_set_fx(tintEffectLayer, _fx_time_tint);
//print(string(time) + "/" + string(timeCycle) + ": " + string(tintIntensity))

// fire events on sunset start/end
if(time == timeMarkerSunset) {
	if(timeDirection == timeDirections.forwards) {	
		event_fire(event.timeSunsetStart)	
	}
	else if(timeDirection == timeDirections.backwards){
		event_fire(event.timeSunsetEnd)
	}
}
// sunset tint
if(time >= timeMarkerSunset[0] && time <= timeMarkerSunset[0] + timeMarkerSunset[1]) {
	var _fx_sunset_tint = layer_get_fx(tintSunsetLayer)
	if(time == timeMarkerSunset[0] || time == timeMarkerSunset[0] + timeMarkerSunset[1]) { 
		fx_set_parameter(_fx_sunset_tint, "g_TintCol", sunColour); 
		}
	if(time <= timeMarkerSunset[0]  + (timeMarkerSunset[1]/2)) {
		var _sunsetLightLevel = lerp(0, 1, (time - timeMarkerSunset[0])/timeMarkerSunset[1])
	}
	else {
		var _sunsetLightLevel = lerp(1, 0, (time - timeMarkerSunset[0])/timeMarkerSunset[1])
	}
	fx_set_parameter(_fx_sunset_tint, "g_Intensity", _sunsetLightLevel);
	layer_set_fx(tintSunsetLayer, _fx_sunset_tint);
}

// fire events on night start/end
if(time == timeMarkerNight) {
	if(timeDirection == timeDirections.forwards) {	
		event_fire(event.timeNightStart)	
	}
	else if(timeDirection == timeDirections.backwards){
		event_fire(event.timeNightEnd)
	}
}

// night tint
if(time >= timeMarkerNight) {
	tintIntensity = lerp(0, tintIntensityMax, (time - timeMarkerNight)/(timeCycle - timeMarkerNight))
	colourR = lerp(colourDay[0], colourNight[0], tintIntensity)
	colourG = lerp(colourDay[1], colourNight[1], tintIntensity)
	colourB = lerp(colourDay[2], colourNight[2], tintIntensity)
	var _fx_time_tint = layer_get_fx(tintNightLayer)
	fx_set_parameter(_fx_time_tint, "g_TintCol", [colourR, colourG, colourB, 1]);
	layer_set_fx(tintNightLayer, _fx_time_tint);
}

//if(time > timeCycle/2){
//	if (time < (timeCycle/4)*3) {
//		var _sunsetLightLevel = lerp(0, 1, time/timeCycle)
//		var _fx_sunset_tint = layer_get_fx(tintSunsetLayer)
//		fx_set_parameter(_fx_sunset_tint, "g_Intensity", _sunsetLightLevel);
//		layer_set_fx(tintSunsetLayer, _fx_sunset_tint);
//	}
//	else {
		
//	}
//}

//print(string(time) + "/" + string(timeCycle) + ": " + string(tintIntensity))

if(timeDirection = timeDirections.forwards) {
	if(time < timeCycle) time++
	if(time == timeCycle) timeDirection = timeDirections.backwards
	sunColour = colourSunset
}
else if(timeDirection = timeDirections.backwards){
	if(time > 0) time--
	if(time == 0) timeDirection = timeDirections.forwards
	sunColour = colourSunrise
}
