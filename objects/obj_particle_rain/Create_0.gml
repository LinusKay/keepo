xStart = PLAYER_OBJ.viewx;
yStart = PLAYER_OBJ.viewy

cameraWidth = camera_get_view_width(view_camera[0]);
cameraHeight = camera_get_view_height(view_camera[0]);

emitterRain = part_emitter_create(obj_particle_setup.particle_system);

part_emitter_region(obj_particle_setup.particle_system, emitterRain, xStart, xStart + cameraWidth, yStart - 20, yStart - 20, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(obj_particle_setup.particle_system, emitterRain, obj_particle_setup.particle_type_rain, 2);