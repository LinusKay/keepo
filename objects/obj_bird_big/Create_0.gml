flying = false;
fly_direction = 0;
fly_speed = 0;
current_fly_speed = 0;
image_index = irandom_range(0,6);
frame_count = 0;
image_blend = colour;
depth = -bbox_bottom

sounds = [
	snd_bird_1,
	snd_bird_2,
	snd_bird_3
]
chirping = false
chirp = sounds[irandom_range(0,array_length(sounds) - 1)]
chirp_length = (audio_sound_length(chirp) * room_speed)
chirp_cooldown_max = 120 + chirp_length
chirp_cooldown = 0