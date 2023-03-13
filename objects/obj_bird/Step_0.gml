if x < 0 || x > room_width || y < 0 || y > room_height instance_destroy();
if !flying
{
	playerDistance = point_distance(x, y, PLAYER_OBJ.x, PLAYER_OBJ.y)
	if playerDistance < 50
	{
		flying = true;
		fly_direction = irandom_range(160, 20);
		if(fly_direction > 90) { image_xscale = -1 } else { image_xscale= 1 }
		fly_speed = random_range(1,4);
		//if !audio_is_playing(snd_wings) audio_play_sound(snd_wings, 90, false);
	}
}
else 
{
	if frame_count > 5
	{
		if current_fly_speed < fly_speed { current_fly_speed += lerp(current_fly_speed, fly_speed, 0.0001); }
		x += lengthdir_x(current_fly_speed, fly_direction);
		y += lengthdir_y(current_fly_speed, fly_direction);
		sprite_index = spr_bird_fly;
	}
	frame_count++;
}