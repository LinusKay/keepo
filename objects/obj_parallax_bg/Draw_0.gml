/// @description Insert description here
// You can write your code in this editor


var _p = .4;
var _camWidth = camera_get_view_width(view_camera[0]);
var _camHeight = camera_get_view_height(view_camera[0]);
var _camx = PLAYER_OBJ.viewx - _camWidth/2;
var _camy = PLAYER_OBJ.viewy - _camHeight/2;
draw_sprite_tiled_ext(
	image, 
	0, 
	_camx * _p, 
	_camy * _p, 
	room_height/sprite_get_height(image)*1, 
	room_height/sprite_get_height(image)*1,
	c_white, 1
);