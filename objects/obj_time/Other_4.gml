if(!layer_exists(tint_night_layer)){ layer_create(-1000,tint_night_layer) }
if(!layer_exists(tint_sunset_layer)){ layer_create(-1000,tint_sunset_layer) }

// init night
var _fx_night_tint = fx_create("_filter_tintfilter");
fx_set_parameter(_fx_night_tint, "g_TintCol", [1, 1, 1, 1]);
layer_set_fx(tint_night_layer, _fx_night_tint);

// init sunset
var _fx_sunset_tint = fx_create("_filter_colourise");
fx_set_parameter(_fx_sunset_tint, "g_TintCol", colour_sunset);
fx_set_parameter(_fx_sunset_tint, "g_Intensity", tint_intensity);
layer_set_fx(tint_sunset_layer, _fx_sunset_tint);