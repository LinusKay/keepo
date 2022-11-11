if(!layer_exists(tintNightLayer)){ layer_create(0,tintNightLayer) }
if(!layer_exists(tintSunsetLayer)){ layer_create(0,tintSunsetLayer) }

// init night
var _fx_night_tint = fx_create("_filter_tintfilter");
fx_set_parameter(_fx_night_tint, "g_TintCol", [1, 1, 1, 1]);
layer_set_fx(tintNightLayer, _fx_night_tint);

// init sunset
var _fx_sunset_tint = fx_create("_filter_colourise");
fx_set_parameter(_fx_sunset_tint, "g_TintCol", colourSunset);
fx_set_parameter(_fx_sunset_tint, "g_Intensity", tintIntensity);
layer_set_fx(tintSunsetLayer, _fx_sunset_tint);