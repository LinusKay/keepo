frameCount = 0;
circleSpeed = 2;
circleRadius = 20;
speedSmooth = 0.2;
startingPosition = 0;

if irandom_range(0, 1) > global.criticalChance criticalHit = true else criticalHit = false;
if criticalHit
	damage = irandom_range((global.bulletDamage/2 - global.bulletDamageVariation/2) * global.criticalModifier, (global.bulletDamage/2 + global.bulletDamageVariation/2) * global.criticalModifier);
else
	damage = irandom_range(global.bulletDamage/2 - global.bulletDamageVariation/2, global.bulletDamage/2 + global.bulletDamageVariation/2);