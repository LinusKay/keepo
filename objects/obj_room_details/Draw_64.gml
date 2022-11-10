//draw_text(RESOLUTION_W/2 - string_width(room_title)/2, 10, room_title);
if frameCount < 0 {
	draw_text(RESOLUTION_W - string_width(roomTitle) - 10, 10, roomTitle);
}
else {
	draw_text_color(RESOLUTION_W - string_width(roomTitle) - 10, 10, roomTitle, c_white, c_white, c_white, c_white, lerp(1, 0, frameCount/100));
}
frameCount++