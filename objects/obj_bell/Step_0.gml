event_inherited()
if(distance_to_object(PLAYER_OBJ) < 50) {
	if(keyboard_check_pressed((ord("F")))) {
		ringing = true	
	}
}

if(ringing) {
		if(sprite_get_speed(sprite_index) < 3) {
			sprite_set_speed(sprite_index, 3, spritespeed_framespersecond)
			audio_play_sound(snd_metal_pipe, 99, false)
		}
		if(ring_timer < ring_time_total) {
			ring_timer++
		}
		if(ring_time_total >= ring_timer) {
				ringing = false
				sprite_set_speed(sprite_index, 0, spritespeed_framespersecond)
		}
}