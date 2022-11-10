/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,PLAYER_OBJ)
{
	if !audio_is_playing(sound)
	{
		audio_stop_all();
		audio_play_sound(sound, 1000, false);
		audio_sound_gain(sound, 0, 0);
		audio_sound_gain(sound, 1, 20000);
		if global.musicPaused { audio_pause_sound(sound); }
	}
}