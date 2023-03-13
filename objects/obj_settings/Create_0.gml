/// @description Insert description here
// You can write your code in this editor
global.game_paused = false;
global.text_speed = .75;

global.auto_save = false;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

global.window_size_selected = 2;
global.window_sizes = [
	[640, 360],
	[864, 648],
	[1280, 720]
]

global.hmac_key = "Ujxt8QY#ai$AuRmdKa@ypYbGnJ"

global.verify_save_integrity = false;

global.text_speed = .75;

global.music_paused = false;
global.volume_music = 0;
global.music_playing = noone;
global.music_teleport_secret = false;