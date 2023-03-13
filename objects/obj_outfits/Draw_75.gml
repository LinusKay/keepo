event_inherited()

var _count = 0;

if outfits_num > 0 {
	var colour = c_white;
	for (var i = min_outfits_display; i < min_outfits_display + max_outfits_display; i++){
		print(string(PLAYER_OBJ.sprite_set) + ", " + string(global.unlocked_outfits[i]));
		if PLAYER_OBJ.sprite_set == global.unlocked_outfits[i] colour = c_yellow else colour = c_black;
		var _outfitx = x1 + border * 2
		var _outfity = y1 + 30 + (30 * (_count + 1)) + title_space
		if outfit_selected == i 	draw_text_ext(_outfitx, _outfity, " " + global.sprite_set_grid[# 0, global.unlocked_outfits[i]], 30, side_right_width); 
		else					draw_text_ext(_outfitx, _outfity,  + global.sprite_set_grid[# 0, global.unlocked_outfits[i]], 30, side_right_width);
		_count++;
	}

	// item selection
	outfit_selected += key_down - key_up;
	if key_up play_sfx(snd_click4);
	if key_down play_sfx(snd_click4, 0.8);
	
	// if go up on first item select last
	if outfit_selected < 0 {
		outfit_selected = outfits_num - 1;
		min_outfits_display = outfits_num - outfit_count_display;
	}
	// if go down on last item select first
	if outfit_selected > outfits_num - 1{
		outfit_selected = 0;	
		min_outfits_display = 0;
	}
	// if moving down requires scrolling down to see, scroll
	if outfit_selected >= min_outfits_display + max_outfits_display {
		min_outfits_display++;	
	}
	// if moving up requires scrolling up to see, scroll
	if outfit_selected < min_outfits_display {
		min_outfits_display--;	
	}
	
	draw_sprite_ext(spr_outfit_background, 0, x1 + side_left_width, y1 + 75, 13, 13, 0, c_white, 1);
	
	if frame_count % 60 == 0 pose_index++;
	if pose_index > ds_grid_width(global.sprite_set_grid) - 5 || pose_index < 2 pose_index = 2;
	var sprite_speed = sprite_get_speed(global.sprite_set_grid[# pose_index, global.unlocked_outfits[outfit_selected]])
	draw_sprite_ext(global.sprite_set_grid[# pose_index, global.unlocked_outfits[outfit_selected]], image_index / (60/sprite_speed), x1 + side_left_width + (sprite_get_width(global.sprite_set_grid[# pose_index, global.unlocked_outfits[outfit_selected]]) * 13)/3, y1 + 140, 13, 13, 0, c_white, 1);
	
	if global.unlocked_outfits[outfit_selected] == PLAYER_OBJ.sprite_set 
	{
		if outfit_selected != 0
		{
			draw_text_ext(x1 + side_left_width, y2 - 60 - border, "F - remove outfit", 30, side_right_width);
		}
		if keyboard_check_pressed(ord("F")) 
		{
			PLAYER_OBJ.sprite_set = 0;
			event_fire(event.outfit_change);
		}
	}
	else
	{
		draw_text_ext(x1 + side_left_width, y2 - 60 - border, "F - select outfit", 30, side_right_width);
		if keyboard_check_pressed(ord("F")) { 
			PLAYER_OBJ.sprite_set = global.unlocked_outfits[outfit_selected]; 
			event_fire(event.outfit_change);
			}
	}
	
}