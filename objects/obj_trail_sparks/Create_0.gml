dir = irandom_range(-1, 1);
spd = irandom_range(5, 10);
decay = random_range(0.02, 0.06);
frameCount = 0;
depth = -9999
image_index = irandom_range(0, sprite_get_number(sprite_index) - 1);
image_blend = global.trailColour[1][irandom_range(0, array_length(global.trailColour[1]) - 1)]