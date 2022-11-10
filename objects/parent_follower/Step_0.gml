event_inherited()
if following {
	xNew = PLAYER_OBJ.pos_x[followSlot * followDistance]
	yNew = PLAYER_OBJ.pos_y[followSlot * followDistance]
	if (x > xNew) {
		image_xscale = -1;
	} else if (x < xNew){
	    image_xscale = 1;
	}
	x = xNew;
	y = yNew;
	
	depth = clamp(-bbox_bottom, 0, PLAYER_OBJ.depth + 1);
}
else {
	depth = -bbox_bottom;
}