if ds_list_find_index(global.pickedUpItems, item_room_id) == -1 {
	if distance_to_object(PLAYER_OBJ) < 10{
		if keyboard_check_pressed(ord("F")) && !global.windowOpen {
			var pop = audio_play_sound(snd_pop, 10, false);
			audio_sound_pitch(pop, random_range(0.5, 1.6));
			audio_sound_gain(snd_pop, global.volumeMusic, 0)
			ds_list_add(global.pickedUpItems, item_room_id);
			PLAYER_OBJ.sprite_set = outfit;
			array_push(global.unlocked_outfits, outfit);
			notification("NEW OUTFIT: " + itemName);
		}
	}
}
else {
	instance_destroy();	
}
y = y + (dsin(frameCount*2)/30);
frameCount++;