if font != noone draw_set_font(font);
else draw_set_font(fnt_pixellari);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _bg = background
var _c
if global.highContrast { 
	_c = c_white 
	_bg = global.highContrast
}
else {
	if colour == noone colour = c_black
	_c = colour
}

if portrait_spr == noone { scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, _bg); }
else
{
	scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, _bg);

	if frameCount % (60/sprite_get_speed(portrait_spr)) == 0 { frameIndex++; }
	if sprite_get_height(portrait_spr) >= 64 draw_sprite_ext(portrait_spr, frameIndex, x1 + 50, y1 - 50, ((portraitSize/32) - portraitOffset)/2, ((portraitSize/32) - portraitOffset)/2, 0, c_white, 1);
	else draw_sprite_ext(portrait_spr, frameIndex, x1 + 50, y1 - 50, (portraitSize/32) - portraitOffset, (portraitSize/32) - portraitOffset, 0, c_white, 1);
	//else draw_sprite_ext(portrait_spr, frameIndex, x1, y1 - (sprite_get_height(portrait_spr)*10), (portraitSize/32) - portraitOffset, (portraitSize/32) - portraitOffset, 0, c_white, 1);
}



var _print = message;
var messageLength = string_length(_print);

if responses[0] != -1
{
	_print += "\n";
	for (var i = 0; i < array_length(responses); i++) 
	{
		_print += "\n";
		if i == responseSelected _print += "> "	
		_print += responses[i];
		if i == responseSelected _print += " <"
	}
}
messageLength = string_length(_print);


// vvvvvvvvvvvvvvvvvv ported from old method vvvvvvvvvvvvvvvvvvvvvvvv
if setup == false {
	// handle individual letters
	for (var c = 0; c <= messageLength; c++){
		//store chars in array
		var _char_pos = c + 1;
		char[c] = string_char_at(_print, _char_pos);
	
		//get curr width of line
		var _txt_up_to_char = string_copy(_print, 1, _char_pos);
		var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c]);
	
		//get last free space
		if char[c] == " " { last_free_space = _char_pos + 1 };
	
		// get line breaks
		line_width = x2 - x1;
		if _current_txt_w > line_width {
			line_break_pos[line_break_num] = last_free_space;
			line_break_num++;
			var _txt_up_to_last_space = string_copy(_print, 1, last_free_space);
			var _last_free_space_string = string_char_at(_print, last_free_space);
			line_break_offset = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
		}
	
	}

	setup = true;

}


if portrait_spr != noone 
{
	draw_text_ext_color((((x1 + portraitSize) + x2) / 2), y1 + 64, _print, 65, x2 - x1 - portraitSize - 10, _c, _c, _c, _c, 1)
}
else 
{
	draw_text_ext_color(((x1 + x2) / 2), y1 + 64, _print, 65, x2 - x1, _c, _c, _c, _c, 1)
}
