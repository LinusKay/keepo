x_start = PLAYER_OBJ.view_x;
y_start = PLAYER_OBJ.view_y

camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);

emitter_rain = part_emitter_create(obj_particle_setup.particle_system);

part_emitter_region(obj_particle_setup.particle_system, emitter_rain, x_start, x_start + camera_width, y_start - 20, y_start - 20, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system, emitter_rain, obj_particle_setup.particle_type_rain, 2);