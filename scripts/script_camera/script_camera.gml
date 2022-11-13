function camera_reset(){
	global.camera_target = PLAYER_OBJ;
	global.camera_width = 384;
	global.camera_height = 216;	
}

function camera_zoom_character(_target){
	global.camera_target = _target;
	global.camera_width = 250;
	global.camera_height = 140;
}
