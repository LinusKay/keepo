if image_alpha <= 0 instance_destroy();
y -= moveSpeed;
if frameCount > aliveLimit image_alpha -= 0.1;
frameCount++;