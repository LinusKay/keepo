x_start = PLAYER_OBJ.view_x - PLAYER_OBJ.view_x/2;
y_start = PLAYER_OBJ.view_y - PLAYER_OBJ.view_y/2;

part_emitter_region(obj_particle_setup.particle_system, emitter_leaves, -300, room_width + 300, y_start - 300, y_start - 300, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system, emitter_leaves, obj_particle_setup.particle_type_leaves, 1);