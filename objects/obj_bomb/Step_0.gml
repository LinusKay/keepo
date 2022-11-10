if frameCount == 0
{
	slowRate = clamp(slowRate/(shootDistance/global.bombDistanceMax), 0.05, 1);
	print(slowRate);
	print("direction " + string(direction));
}
if frameCount == explodeTime
{
	instance_create_layer(x, y, "Instances", obj_bomb_explosion)
	instance_destroy();
}
if frameCount == explodeTime/2 flashSpeed = flashSpeed/2
if frameCount % flashSpeed = 0
{
	if image_blend = c_white image_blend = c_red;
	else image_blend = c_white;
}
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)
if(point_distance(x, y, shootOrigin_x, shootOrigin_y) >= shootDistance)
{
	speed = lerp(speed, 0, slowRate);
}
frameCount++;

if place_meeting(x + lengthdir_x(speed, direction), y, obj_wall) || place_meeting(x, y + lengthdir_y(speed, direction), obj_wall)
{
	while place_meeting(x, y, other){
	    x += lengthdir_x(1, direction - 180);
	    y += lengthdir_y(1, direction - 180);
	}
	direction = direction + 90;
	speed *= 0.8
}
