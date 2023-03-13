if(sway) && global.allow_sway {
	sway_offset = sine_wave(current_time / 1000  + sway_time_offset, sway_speed, 1, 0);
	draw_sprite_pos(sprite_index, 0, x + sway_offset, y, x + sprite_width + sway_offset, y, x + sprite_width, y+sprite_height, x, y + sprite_height, 1)
}
else {
	draw_self()	
}