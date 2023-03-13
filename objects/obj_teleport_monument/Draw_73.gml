frame_count++;
if place_meeting(x, y, PLAYER_OBJ) 
{
	if target_room != 0 {draw_sprite(spr_button_f, frame_index, x, y - 43);}
	image_index = 1;
}
else {
	image_index = 0;	
}
if frame_count % 30 == 0 { frame_index++; }