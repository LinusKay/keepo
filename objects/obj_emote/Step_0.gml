if frameCount > 20 {
	image_alpha -= 0.01;
}
frameCount++;
if(image_alpha <= 0){
	instance_destroy();	
}