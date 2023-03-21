if keyboard_check_pressed(ord("M")){
	if global.music_paused{
		global.music_paused = false;
		if audio_is_paused(bgm_file) audio_resume_sound(bgm_file)
		else audio_play_sound(bgm_file, global.volume_music, true);
	}
	else {
		global.music_paused = true;
		audio_pause_sound(bgm_file);
	}
}
if fade_in
{
	if frame_count > 2000 && audio_sound_get_gain(bgm_file) != global.volume_music
	{
		audio_sound_gain(bgm_file, global.volume_music, 0)	
	}
}
else
{
	if audio_sound_get_gain(bgm_file) != global.volume_music
	{
		audio_sound_gain(bgm_file, global.volume_music, 0)	
	}
}

frame_count++;