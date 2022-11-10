trailInterval = 2;

frameCount = 0;

if irandom_range(0, 1) > global.criticalChance criticalHit = true else criticalHit = false;
if criticalHit
	damage = irandom_range((global.bulletDamage - global.bulletDamageVariation) * global.criticalModifier, (global.bulletDamage + global.bulletDamageVariation) * global.criticalModifier);
else
	damage = irandom_range(global.bulletDamage - global.bulletDamageVariation, global.bulletDamage + global.bulletDamageVariation);