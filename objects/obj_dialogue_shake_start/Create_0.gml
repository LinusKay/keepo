if(!layer_exists("effects_shake")) layer_create(-5000, "effects_shake")
var _shake = fx_create("_filter_screenshake")
fx_set_parameters(_shake,
	{
		g_Magnitude : shakeMagnitude,
		g_ShakeSpeed : shakeSpeed
	}
)
layer_set_fx("effects_shake", _shake)