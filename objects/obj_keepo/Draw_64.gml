if !instance_exists(obj_textbox)
{
draw_set_font(fnt_pixellari_small)
draw_set_valign(fa_top);
draw_set_halign(fa_left);


frameCount++;


// draw dash cooldown bar
if !global.windowOpen 
	{
		if dashUnlocked {
			draw_sprite_ext(spr_dash_bar, (dash_countdown / dash_timer) * sprite_get_number(spr_dash_bar), 10, 10, 5, 5, 0, c_white, 1)
		}
	}
}

if global.musicPaused
{
	draw_sprite_ext(spr_muted, 0, RESOLUTION_W - 70, 10, 5, 5, 0, c_white, 1);	
}


if global.notification_timer > 0 && array_length(global.notification_text) > 0
{
	draw_text_ext_color(RESOLUTION_W - 50 - string_width(global.notification_text[notification_position]), RESOLUTION_H - 80, global.notification_text[notification_position], 1, RESOLUTION_W, c_white, c_white, c_white, c_white, 1)
	global.notification_timer--;
}
else if global.notification_timer == 0
{
	if array_length(global.notification_text) > 0
	{
		if notification_position == array_length(global.notification_text) - 1
		{
		notification_position = 0;
		global.notification_text = [];
		}
		else
		{
			notification_position++;
			global.notification_timer = global.notification_timer_default;
		}
	}
}
if global.debug_mode draw_text_ext(50, RESOLUTION_H - 50, "coins: " + string(global.coins), 0, string_width("coins: " + string(global.coins)))