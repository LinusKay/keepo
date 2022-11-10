function sleeves_rain_start(){
	sprite_index = spr_sleeves_umbrella;
}

function sleeves_rain_end(){
	sprite_index = spr_sleeves;
}

function hotdog_friend_rain_start(){
	sprite_index = spr_hotdog_friend_umbrella;
}

function hotdog_friend_rain_end(){
	sprite_index = spr_hotdog_friend;
}

function pyramid_confuse(){
	instance_create_layer(x, y - sprite_get_height(sprite_index) - 1, "effects", obj_emote_confuse);	
}