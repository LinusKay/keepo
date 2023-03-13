if !audio_is_playing(bgm_file){
	if !global.music_paused
	{
		audio_stop_all();
		global.music_playing = audio_play_sound(bgm_file, global.volume_music, true);
		audio_sound_gain(bgm_file, 0, 0);
		audio_sound_gain(bgm_file, global.volume_music, 2000);
	}
}
frame_count = 0;