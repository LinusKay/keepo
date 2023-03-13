if frame_count > 20 {
	image_alpha -= 0.01;
}
frame_count++;
if(image_alpha <= 0){
	instance_destroy();	
}