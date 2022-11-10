event_inherited()

// luco relationship
draw_sprite_ext(spr_luco, 0, x1 + border + 55, y1 + 150 , 5, 5, 0, c_white, 1);
var hearts = ceil(clamp(lerp(0, 10, global.relationships[? "luco"]/global.relationshipLevelLove), 0, 10));
for (var i = 0; i < hearts; i++) { draw_sprite_ext(spr_heart_full, 0, x1 + border + 100 + (i*40), y1 + 100 , 5, 5, 0, c_white, 1); }
var emptyhearts = 10 - hearts;
for (var i = 0; i < emptyhearts; i++) { draw_sprite_ext(spr_heart_empty, 0, x1 + border + 100 + (hearts*40) + (i*40), y1 + 100 , 5, 5, 0, c_white, 1); }
if global.debugMode { draw_text(x1 + border + 100 + 450, y1+100, global.relationships[? "luco"]); }

//sleeves relationship
draw_sprite_ext(spr_sleeves, 0, x1 + border + 55, y1 + 250 , 5, 5, 0, c_white, 1);
var hearts = ceil(clamp(lerp(0, 10, global.relationships[? "sleeves"]/global.relationshipLevelLove), 0, 10));
for (var i = 0; i < hearts; i++) { draw_sprite_ext(spr_heart_full, 0, x1 + border + 100 + (i*40), y1 + 200 , 5, 5, 0, c_white, 1); }
var emptyhearts = 10 - hearts;
for (var i = 0; i < emptyhearts; i++) { draw_sprite_ext(spr_heart_empty, 0, x1 + border + 100 + (hearts*40) + (i*40), y1 + 200 , 5, 5, 0, c_white, 1); }

if global.debugMode { draw_text(x1 + border + 100 + 450, y1+200, global.relationships[? "sleeves"]); }

//hat man relationship
draw_sprite_ext(spr_hat_man_right, 0, x1 + border + 55, y1 + 350 , 5, 5, 0, c_white, 1);
var hearts = ceil(clamp(lerp(0, 10, global.relationships[? "hat man"]/global.relationshipLevelLove), 0, 10));
for (var i = 0; i < hearts; i++) { draw_sprite_ext(spr_heart_full, 0, x1 + border + 100 + (i*40), y1 + 300 , 5, 5, 0, c_white, 1); }
var emptyhearts = 10 - hearts;
for (var i = 0; i < emptyhearts; i++) { draw_sprite_ext(spr_heart_empty, 0, x1 + border + 100 + (hearts*40) + (i*40), y1 + 300 , 5, 5, 0, c_white, 1); }
if global.debugMode { draw_text(x1 + border + 100 + 450, y1+300, global.relationships[? "hat man"]); }

//blue relationship
draw_sprite_ext(spr_blue_right, 0, x1 + border + 55, y1 + 450 , 5, 5, 0, c_white, 1);
var hearts = ceil(clamp(lerp(0, 10, global.relationships[? "blue"]/global.relationshipLevelLove), 0, 10));
for (var i = 0; i < hearts; i++) { draw_sprite_ext(spr_heart_full, 0, x1 + border + 100 + (i*40), y1 + 400 , 5, 5, 0, c_white, 1); }
var emptyhearts = 10 - hearts;
for (var i = 0; i < emptyhearts; i++) { draw_sprite_ext(spr_heart_empty, 0, x1 + border + 100 + (hearts*40) + (i*40), y1 + 400 , 5, 5, 0, c_white, 1); }
if global.debugMode { draw_text(x1 + border + 100 + 450, y1+400, global.relationships[? "blue"]); }
