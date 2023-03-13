if ds_list_find_index(global.picked_up_items, item_room_id) == -1 {
	if distance_to_object(PLAYER_OBJ) < 10{
		if keyboard_check_pressed(ord("F")) && !global.window_open {
			var pop = audio_play_sound(snd_pop, 10, false);
			audio_sound_pitch(pop, random_range(0.5, 1.6));
			audio_sound_gain(snd_pop, global.volume_music, 0)
			ds_list_add(global.picked_up_items, item_room_id);
			PLAYER_OBJ.sprite_set = outfit;
			array_push(global.unlocked_outfits, outfit);
			notification("NEW OUTFIT: " + item_name);
		}
	}
}
else {
	instance_destroy();	
}
y = y + (dsin(frame_count*2)/30);
frame_count++;