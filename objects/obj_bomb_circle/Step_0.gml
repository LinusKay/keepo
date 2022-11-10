if !instance_exists(target) instance_destroy();
// fix for player obj origin point being top left, rather than centre/bottom centre
if target == PLAYER_OBJ
{
	targetX = PLAYER_OBJ.centre_x;	
	targetY = PLAYER_OBJ.centre_y;	
	print("target player");
}
else
{
	if target != undefined
	{
		targetX = target.x;
		targetY = target.y;
	}
	else instance_destroy();
}

x = lerp(x, targetX + lengthdir_x(circleRadius, (frameCount * circleSpeed) + startingPosition), speedSmooth);
y = lerp(y, targetY + lengthdir_y(circleRadius, (frameCount * circleSpeed) + startingPosition), speedSmooth);

enemy = instance_nearest(x, y, parent_enemy);
if distance_to_object(enemy) < 40
{	
	target = enemy;
	speedSmooth = 0.05;
	if distance_to_object(enemy) < 10
	{
		instance_create_layer(x, y, "Instances", obj_bomb_explosion)
		instance_destroy();	
	}
}

frameCount++;