if global.debugMode
{
	hp_string = string(hp) + "/" + string(hpMax)
	draw_text_ext_transformed(x, y - 10, hp_string, 10, string_width(hp_string), .1, .1, 0)	
}

hp_bar_w = 15;
hp_string = string(hp) + "/" + string(hpMax)
draw_sprite_stretched(spr_health_bg, 0, x - hp_bar_w/2, y - 14, 15, 2)
draw_sprite_stretched(spr_health, 0, x - hp_bar_w/2, y - 14, hp_bar_w * (hp/hpMax), 2)
draw_text_ext_transformed(x - string_width(hp_string)/20, y - 25, hp_string, 10, string_width(hp_string), .1, .1, 0)	