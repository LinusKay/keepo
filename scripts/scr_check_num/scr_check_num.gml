function scr_check_num(_input){
	var s = _input;
	var n = string_length(string_digits(s));
	return n && n == string_length(s) - (string_char_at(s, 1) == "-") - (string_pos(".", s) != 0);
}