/// @description Insert description here
// You can write your code in this editor
global.game_paused = false;
global.textSpeed = .75;

global.autoSave = false;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

global.window_size_selected = 2;
global.window_sizes = [
	[640, 360],
	[864, 648],
	[1280, 720]
]

global.hmac_key = "Ujxt8QY#ai$AuRmdKa@ypYbGnJ"

global.verifySaveIntegrity = true;

global.textSpeed = .75;

global.musicPaused = false;
global.volumeMusic = 1;
global.musicPlaying = noone;
global.musicTeleportSecret = false;