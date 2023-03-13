if frame_count % spd == 0 {
x += dir;
y += dir/2;
}

image_alpha -= decay;

if image_alpha <= 0 {
	instance_destroy();	
}
frame_count++;