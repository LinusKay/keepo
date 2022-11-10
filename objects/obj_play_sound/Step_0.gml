
if keyboard_check_pressed(ord("M")){
	if global.musicPaused{
		global.musicPaused = false;
		audio_resume_sound(sound)
	}
	else {
		global.musicPaused = true;
		audio_pause_sound(sound);
	}
}

if audio_sound_get_gain(sound) != global.volumeMusic
{
	audio_sound_gain(sound, global.volumeMusic, 0)	
}