draw_set_font(fnt_pixellari_small)

if frame_count > fade_time fade_away = true

var not_grid = ds_notifications
var grid_height = ds_grid_height(not_grid)
var c = c_white

for(var i = 0; i < grid_height; i++) {
	var not_sign = ""
	if(not_grid[# 0, i]) > 0 {
		 not_sign = "+"
	}
	
	draw_text_colour(
		20, 75 + (50 * i),
		not_sign + string(not_grid[# 0, i]) + " " + string(not_grid[# 1, i]),
		c, c, c, c, not_alpha
	)
}

// fade
if (fade_away) not_alpha -= 0.1
if (not_alpha <= 0) instance_destroy()

frame_count++