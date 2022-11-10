event_inherited()

var _count = 0;

if outfits_num > 0 {
	var colour = c_white;
	for (var i = minOutfitsDisplay; i < minOutfitsDisplay + maxOutfitsDisplay; i++){
		print(string(PLAYER_OBJ.sprite_set) + ", " + string(global.unlocked_outfits[i]));
		if PLAYER_OBJ.sprite_set == global.unlocked_outfits[i] colour = c_yellow else colour = c_black;
		var _outfitx = x1 + border * 2
		var _outfity = y1 + 30 + (30 * (_count + 1)) + titleSpace
		if outfitSelected == i 	draw_text_ext(_outfitx, _outfity, " " + global.sprite_set_grid[# 0, global.unlocked_outfits[i]], 30, sideRightWidth); 
		else					draw_text_ext(_outfitx, _outfity,  + global.sprite_set_grid[# 0, global.unlocked_outfits[i]], 30, sideRightWidth);
		_count++;
	}

	// item selection
	outfitSelected += keyDown - keyUp;
	if keyUp play_sfx(snd_click4);
	if keyDown play_sfx(snd_click4, 0.8);
	
	// if go up on first item select last
	if outfitSelected < 0 {
		outfitSelected = outfits_num - 1;
		minOutfitsDisplay = outfits_num - outfitCountDisplay;
	}
	// if go down on last item select first
	if outfitSelected > outfits_num - 1{
		outfitSelected = 0;	
		minOutfitsDisplay = 0;
	}
	// if moving down requires scrolling down to see, scroll
	if outfitSelected >= minOutfitsDisplay + maxOutfitsDisplay {
		minOutfitsDisplay++;	
	}
	// if moving up requires scrolling up to see, scroll
	if outfitSelected < minOutfitsDisplay {
		minOutfitsDisplay--;	
	}
	
	draw_sprite_ext(spr_outfit_background, 0, x1 + sideLeftWidth, y1 + 75, 13, 13, 0, c_white, 1);
	
	if frameCount % 60 == 0 poseIndex++;
	if poseIndex > ds_grid_width(global.sprite_set_grid) - 5 || poseIndex < 2 poseIndex = 2;
	var sprite_speed = sprite_get_speed(global.sprite_set_grid[# poseIndex, global.unlocked_outfits[outfitSelected]])
	draw_sprite_ext(global.sprite_set_grid[# poseIndex, global.unlocked_outfits[outfitSelected]], image_index / (60/sprite_speed), x1 + sideLeftWidth + (sprite_get_width(global.sprite_set_grid[# poseIndex, global.unlocked_outfits[outfitSelected]]) * 13)/3, y1 + 140, 13, 13, 0, c_white, 1);
	
	if global.unlocked_outfits[outfitSelected] == PLAYER_OBJ.sprite_set 
	{
		if outfitSelected != 0
		{
			draw_text_ext(x1 + sideLeftWidth, y2 - 60 - border, "F - remove outfit", 30, sideRightWidth);
		}
		if keyboard_check_pressed(ord("F")) 
		{
			PLAYER_OBJ.sprite_set = 0;
			event_fire(event.outfitChange);
		}
	}
	else
	{
		draw_text_ext(x1 + sideLeftWidth, y2 - 60 - border, "F - select outfit", 30, sideRightWidth);
		if keyboard_check_pressed(ord("F")) { 
			PLAYER_OBJ.sprite_set = global.unlocked_outfits[outfitSelected]; 
			event_fire(event.outfitChange);
			}
	}
	
}