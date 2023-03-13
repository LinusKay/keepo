event_inherited()
if following {
	x_new = PLAYER_OBJ.pos_x[follow_slot * follow_distance]
	y_new = PLAYER_OBJ.pos_y[follow_slot * follow_distance]
	if (x > x_new) {
		image_xscale = -1;
	} else if (x < x_new){
	    image_xscale = 1;
	}
	x = x_new;
	y = y_new;
	
	depth = clamp(-bbox_bottom, 0, PLAYER_OBJ.depth + 1);
}
else {
	depth = -bbox_bottom;
}