if x < 0 || x > room_width || y < 0 || y > room_height instance_destroy();
if !flying
{
	playerDistance = point_distance(x, y, PLAYER_OBJ.x, PLAYER_OBJ.y)
	if playerDistance < 50
	{
		flying = true;
		fly_direction = irandom_range(160, 20);
		if(fly_direction > 90) { image_xscale = -1 } else { image_xscale= 1 }
		fly_speed = random_range(1,3);
	}
}
else 
{
	if frame_count > 5
	{
		if current_fly_speed < fly_speed { current_fly_speed += lerp(current_fly_speed, fly_speed, 0.0001); }
		x += lengthdir_x(current_fly_speed, fly_direction);
		y += lengthdir_y(current_fly_speed, fly_direction);
		sprite_index = spr_bird_big_fly;
		if !audio_is_playing(snd_bird_wing) audio_play_sound(snd_bird_wing, 90, false);
	}
	frame_count++;
}

player_distance = point_distance(x, y, PLAYER_OBJ.x, PLAYER_OBJ.y);
if(can_chirp) {
	if(!chirping) {
		if(chirp_cooldown == 0) {
			chirp_cooldown = chirp_cooldown_max
			chirping = true
		}
	}
	else {
		if player_distance < chirp_distance {
			if !audio_is_playing(chirp) audio_play_sound(chirp, 90, true)
			audio_sound_gain(chirp, lerp(1, 0, player_distance/chirp_distance), 0);
		}
		else if audio_is_playing(chirp) audio_stop_sound(chirp);
	}
	if(chirp_cooldown > 0) {
		chirp_cooldown--	
	}
}