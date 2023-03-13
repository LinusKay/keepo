
if keyboard_check_pressed(ord("M")){
	if global.music_paused{
		global.music_paused = false;
		audio_resume_sound(sound)
	}
	else {
		global.music_paused = true;
		audio_pause_sound(sound);
	}
}

if audio_sound_get_gain(sound) != global.volume_music
{
	audio_sound_gain(sound, global.volume_music, 0)	
}