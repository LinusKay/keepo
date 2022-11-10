
if point_distance(x, y, PLAYER_OBJ.x, PLAYER_OBJ.y) < 25
{
	if keyboard_check_pressed(ord("F"))
	{
		if radioOn
		{
			radioOn = false;
			audio_stop_sound(musicAddition);
			image_index = 0;
		}
		else
		{
			radioOn = true;
			image_index = 1;
			if audio_is_playing(musicMain)
			{
				beat_id = audio_play_sound(musicAddition, 1000, true)
				audio_sound_set_track_position(beat_id, audio_sound_get_track_position(global.musicPlaying))
				
			}
		}
	}
}

if radioOn
{
	if audio_is_paused(musicMain){ audio_stop_sound(musicAddition); radioOn = false; image_index = 0; }
	if frameCount % 30 == 0 {
		instance_create_depth(
			x + 4 + random_range(-spawn_distance, spawn_distance), 
			y - 10 + random_range(-spawn_distance, spawn_distance), 
			99, obj_music_note)
	}
frameCount++;	
}