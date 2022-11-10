particle_system = part_system_create_layer("weather", 0);

#region RAIN
particle_type_rain = part_type_create();

part_type_sprite(particle_type_rain, spr_rain, 0, 0, 0);

part_type_gravity(particle_type_rain, 0.05, irandom_range(260,290));

part_type_life(particle_type_rain, 150, 200);
#endregion

#region SNOW
particle_type_snow = part_type_create();

part_type_sprite(particle_type_snow, spr_snow, 0, 0, 1);

part_type_gravity(particle_type_snow, 0.03, irandom_range(260,290));

part_type_life(particle_type_snow, 150, 200);
#endregion

#region LEAVES
particle_type_leaves = part_type_create();

part_type_sprite(particle_type_leaves, spr_leaves, 0, 0, 1);

part_type_gravity(particle_type_leaves, 0.005, irandom_range(230,330));

part_type_life(particle_type_leaves, 150, 1500);
#endregion