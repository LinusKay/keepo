xStart = PLAYER_OBJ.viewx - PLAYER_OBJ.viewx/2;
yStart = PLAYER_OBJ.viewy - PLAYER_OBJ.viewy/2;

part_emitter_region(obj_particle_setup.particle_system, emitterSnow, -300, room_width + 300, yStart - 75, yStart - 75, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system, emitterSnow, obj_particle_setup.particle_type_snow, 3);