//x1 = x - 20 - sprite_get_width(sprite_index)/2;
//y1 = y - 20 - sprite_get_height(sprite_index)/2;
//x2 = x + 20 + sprite_get_width(sprite_index)/2;
//y2 = y + 20 + sprite_get_height(sprite_index)/2;

explosion_radius = 40;

var hits = ds_list_create()
collision_circle_list(x, y, explosion_radius, parent_enemy, false, true, hits, true);

for(var i = 0; i < ds_list_size(hits); i++)
{
	var enemy = ds_list_find_value(hits, i)
	enemy.image_blend = c_blue;
	if irandom_range(0, 1) > global.criticalChance criticalHit = true else criticalHit = false;
	if criticalHit
		damage = irandom_range((global.bombDamage - global.bombDamageVariation) * global.criticalModifier, (global.bombDamage + global.bombDamageVariation) * global.criticalModifier);
	else
		damage = irandom_range(global.bombDamage - global.bombDamageVariation, global.bombDamage + global.bombDamageVariation);

	enemy.shotHit = true;
	enemy.hp -= damage;
	if criticalHit print("[CRITICAL] hit " + enemy.enemyName + " for " + string(damage) + " damage (" + string(enemy.hp) + "/" + string(enemy.hpMax) + ")");
	else print("hit " + enemy.enemyName + " for " + string(damage) + " damage (" + string(enemy.hp) + "/" + string(enemy.hpMax) + ")"); 
}
ds_list_destroy(hits);