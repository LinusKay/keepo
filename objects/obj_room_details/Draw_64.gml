//draw_text(RESOLUTION_W/2 - string_width(room_title)/2, 10, room_title);
if frame_count < 0 {
	draw_text(RESOLUTION_W - string_width(room_title) - 10, 10, room_title);
}
else {
	draw_text_color(RESOLUTION_W - string_width(room_title) - 10, 10, room_title, c_white, c_white, c_white, c_white, lerp(1, 0, frame_count/100));
}
frame_count++