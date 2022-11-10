//next_key = keyboard_check_pressed(vk_space);

//textbox_x = camera_get_view_x(view_camera[0]);
//textbox_y = camera_get_view_y(view_camera[0]) + 65;



//// freeze movement during dialogue
//// keeps view clean and also avoids issue of text not following camera position
//global.move_freeze = true;

//// setup
//if setup == false {
//	view_width = camera_get_view_width(view_camera[0]);
//	view_height = camera_get_view_height(view_camera[0]);
//	if view_width > 144  {	camera_set_view_size(view_camera[0], 144, 108) }
//	//camera_set_view_target(view_camera[0], obj_pyramid)
	
//	print(view_width);
//	print(view_height);
//	draw_set_font(font_main);
//	draw_set_valign(fa_top);
//	draw_set_halign(fa_left);
	
//	//loop through pages
//	for(var p = 0; p < page_number; p++){
//		// determine how many characters on each page and store in "text_length" array
//		text_length[p] = string_length(text[p]);	
		
//		// get x position for textbox
//		//char on left
//		text_x_offset[p] = 36;
//		portrait_x_offset[p] = 3;
//		//char on right
//		if speaker_side[p] == -1 {
//			text_x_offset[p] = 3;
//			portrait_x_offset[p] = 109;
//		}
//		//no character (center textbox on screen)
//		if speaker_spr[p] == noone {
//			text_x_offset[p] = 12;
//		}
		
//		//set individual chars and find where lines of text should break
//		for (var c = 0; c < text_length[p]; c++){
//			var _char_pos = c + 1;
			
//			// store chars in char array
//			char[c, p] = string_char_at(text[p], _char_pos);
			
//			//get curr width of line
//			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
//			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
			
//			//get last free space
//			if char[c, p] == " " { last_free_space = _char_pos + 1 };
			
//			// get line breaks
//			if _current_txt_w - line_break_offset[p] > line_width {
//				line_break_pos[line_break_num[p], p] = last_free_space;
//				line_break_num[p]++;
//				var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space);
//				var _last_free_space_string = string_char_at(text[p], last_free_space);
//				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
//			}
//		}
		
//		//get each char coordinates
//		for(var c = 0; c < text_length[p]; c++){
//			var _char_pos = c + 1;
//			var _txt_x = textbox_x + text_x_offset[p] + border;
//			var _txt_y = textbox_y + border;
			
//			//get current width of line
//			var _txt_up_to_char = string_copy(text[p], 1, _char_pos);
//			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
//			var _txt_line = 0;
			
//			//compensate for string breaks
//			for(var lb = 0; lb < line_break_num[p]; lb ++){
//				//if current looping char is after a line break
//				if _char_pos >= line_break_pos[lb, p] {
//					var _str_copy = string_copy(text[p], line_break_pos[lb, p], _char_pos - line_break_pos[lb, p]);
//					_current_txt_w = string_width(_str_copy);
					
//					//record line this char should be on
//					_txt_line = lb + 1; // +1 since lb starts at 0
					
//				}
//			}
			
//			//add to x and y coordinates based on the new info
//			char_x[c, p] = _txt_x + _current_txt_w;
//			char_y[c, p] = _txt_y + _txt_line * line_sep;
//		}
		
//	}
	
//	setup = true;
//}
	
//// type text
//if text_pause_timer <= 0 {
//	if draw_char < text_length[page] {
//		draw_char += text_spd;
//		draw_char = clamp(draw_char, 0, text_length[page]);
	
//		var _check_char = string_char_at(text[page], draw_char){
//			if _check_char == "." || _check_char == "," || _check_char == "?" || _check_char == "!" || _check_char == "-"{
//				text_pause_timer = text_pause_time;	
//			}
//			else {
//				//typing sound
//				if snd_count < snd_delay {
//					snd_count++;	
//				}
//				else {
//					snd_count = 0;
//					audio_play_sound(snd[page], 8, false);
//					audio_sound_pitch(snd[page], random_range(0.9, 1.1));
//				}
//			}
//		}
	
//	}
//} 
//else {
//	text_pause_timer--;
//}


////------------flip through pages-------------
//if next_key {
//	// if typing is done, move to next page
//	if draw_char == text_length[page]{
//		//next page
//		if page < page_number - 1{
//			page++;
//			draw_char = 0;
//		}
//		//destroy textbox
//		else {
//			// link text for options
//			if option_number > 0 {
//				create_textbox(option_link_id[option_pos]);
//			}
//			instance_destroy();
//			// restore movement
//			if camera_get_view_width < view_width{ camera_set_view_size(view_camera[0], view_width, view_height)};
//			//camera_set_view_target(view_camera[0], PLAYER_OBJ);
//			global.move_freeze = false;
//		}
//	}
//	// if not done typing
//	else {
//		draw_char = text_length[page];
//	}
//}
	
	
//// ----------------draw textbox----------
//var _txtb_x = textbox_x + text_x_offset[page];
//var _txtb_y = textbox_y;
//txtb_img += txtb_img_spd;
//txtb_spr_w = sprite_get_width(txtb_spr[page]);
//txtb_spr_h = sprite_get_height(txtb_spr[page]);
////draw speaker
//if speaker_spr[page] != noone {
//	sprite_index = speaker_spr[page];
//	if draw_char == text_length[page] { image_index = 0; }
//	var _speaker_x = textbox_x + portrait_x_offset[page];
//	if speaker_side[page] == -1 {_speaker_x += sprite_width};
//	//draw speaker
//	//allow downscaling for 64x64 portraits
//	var _box_x_scale = sprite_width/txtb_spr_w;
//	var _box_y_scale = sprite_height/txtb_spr_h;
//	var _portrait_x_scale = speaker_side[page];
//	var _portrait_y_scale = 1;
//	if sprite_width == 64  {
//		_portrait_x_scale = _portrait_x_scale/2; 
//		_portrait_y_scale = _portrait_y_scale/2
//		_box_x_scale = _box_x_scale/2;
//		_box_y_scale = _box_y_scale/2;
//		};
//	draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, _box_x_scale, _box_y_scale , 0, c_white, 1);
//	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, _portrait_x_scale, _portrait_y_scale, 0, c_white, 1);
	
//}
////background of textbox


//draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);


////-----------options------------
//if draw_char == text_length[page] && page == page_number - 1 {
//	//option selection
//	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
//	option_pos = clamp(option_pos, 0, option_number - 1);

//	//draw the options
//	var _op_space = 15;
//	var _op_border = 4;
//	var _op_left_margin = 5;
//	for (var op = 0; op < option_number; op++){
//		//the option box
//		var _option_w = string_width(option[op]) + _op_border * 2;
//		draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + _op_left_margin, _txtb_y - _op_space * option_number + _op_space * op, _option_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h, 0, c_white, 1);
	
//		// option arrow
//		if option_pos == op {
//			draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + _op_left_margin, _txtb_y - _op_space * option_number + _op_space * op, _option_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h, 0, c_yellow, 1);
//			draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_space * option_number + _op_space * op);
//		}
//		else {
//			draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + _op_left_margin, _txtb_y - _op_space * option_number + _op_space * op, _option_w/txtb_spr_w, (_op_space - 1)/txtb_spr_h, 0, c_white, 1);	
//		}
//		//the option text
//		draw_text(_txtb_x + _op_left_margin + _op_border, _txtb_y - _op_space * option_number + _op_space * op + 2, option[op])
//	}
//}
////draw text
//for(var c = 0; c < draw_char; c++){
//	//special effects
//	//wavy text
//	var _wave_y = 0;
//	if wave_text[c, page] == true {
//		wave_dir[c, page] -= 6;
//		_wave_y = dsin(wave_dir[c, page]);
//	}
	
//	//shakey text
//	var _shake_x = 0;
//	var _shake_y = 0;
//	if shake_text[c, page] == true {
//		shake_timer[c, page]--;
//		if shake_timer[c, page] <= 0 {
//			shake_timer[c, page] = irandom_range(4,8);
//			shake_dir[c, page] = irandom(360);
//		}
//		if shake_timer[c, page] <= 2 {
//		_shake_x = lengthdir_x(.5, shake_dir[c, page]);
//		_shake_y = lengthdir_y(.5, shake_dir[c, page]);	
//		}
//	}
	
	
//	draw_set_font(font[c, page]);
	
	
//	//the text
//	draw_text_color(char_x[c, page] + _shake_x, char_y[c, page] + _wave_y + _shake_y, char[c, page], col_1[c, page], col_2[c, page], col_3[c, page], col_4[c, page], 1);
//}


