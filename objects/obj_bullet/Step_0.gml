if frameCount % trailInterval == 0
{
	instance_create_layer(x, y, "effects", obj_trail_sparks)	
}

if place_meeting(x, y, parent_enemy)
{
	entity = instance_place(x, y, parent_enemy);	
	entity.shotHit = true;
	entity.hp -= damage;
	if criticalHit print("[CRITICAL] hit " + entity.enemyName + " for " + string(damage) + " damage (" + string(entity.hp) + "/" + string(entity.hpMax) + ")");
	else print("hit " + entity.enemyName + " for " + string(damage) + " damage (" + string(entity.hp) + "/" + string(entity.hpMax) + ")");

}

if place_meeting(x, y, obj_wall) instance_destroy();


if frameCount > global.bulletRange instance_destroy();

frameCount++;
