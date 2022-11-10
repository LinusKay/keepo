frameCount++;
if place_meeting(x, y, PLAYER_OBJ) 
{
	if targetRoom != 0 {draw_sprite(spr_button_f, frameIndex, x, y - 43);}
	image_index = 1;
}
else {
	image_index = 0;	
}
if frameCount % 30 == 0 { frameIndex++; }