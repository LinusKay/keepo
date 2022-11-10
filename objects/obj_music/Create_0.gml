if !audio_is_playing(bgmFile){
	if !global.musicPaused
	{
		audio_stop_all();
		global.musicPlaying = audio_play_sound(bgmFile, global.volumeMusic, true);
		audio_sound_gain(bgmFile, 0, 0);
		audio_sound_gain(bgmFile, global.volumeMusic, 2000);
	}
}
frameCount = 0;