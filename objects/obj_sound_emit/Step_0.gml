player_distance = point_distance(x, y, PLAYER_OBJ.x, PLAYER_OBJ.y);
if player_distance < emit_distance
{
	if !audio_is_playing(sound) audio_play_sound(sound, 90, true)
	else audio_sound_gain(sound, lerp(1, 0, player_distance/emit_distance), 0);
}
else if audio_is_playing(sound) audio_stop_sound(sound);