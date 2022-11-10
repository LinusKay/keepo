if room == rm_forest && global.musicTeleportSecret && bgmFile != bgm_temporal_bonus
{
	bgmFile = bgm_temporal_bonus 
	if !global.musicPaused
	{
		audio_stop_all();
		global.musicPlaying = audio_play_sound(bgmFile, global.volumeMusic, true);
		frameCount = 0;
		audio_sound_gain(bgmFile, 0, 0);
		audio_sound_gain(bgmFile, global.volumeMusic, 2000);
	}
}

if keyboard_check_pressed(ord("M")){
	if global.musicPaused{
		global.musicPaused = false;
		if audio_is_paused(bgmFile) audio_resume_sound(bgmFile)
		else audio_play_sound(bgmFile, global.volumeMusic, true);
	}
	else {
		global.musicPaused = true;
		audio_pause_sound(bgmFile);
	}
}
if fadeIn
{
	if frameCount > 2000 && audio_sound_get_gain(bgmFile) != global.volumeMusic
	{
		audio_sound_gain(bgmFile, global.volumeMusic, 0)	
	}
}
else
{
	if audio_sound_get_gain(bgmFile) != global.volumeMusic
	{
		audio_sound_gain(bgmFile, global.volumeMusic, 0)	
	}
}

frameCount++;