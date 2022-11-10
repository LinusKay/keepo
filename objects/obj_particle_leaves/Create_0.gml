xStart = PLAYER_OBJ.viewx;
yStart = PLAYER_OBJ.viewy

cameraWidth = camera_get_view_width(view_camera[0]);
cameraHeight = camera_get_view_height(view_camera[0]);

emitterLeaves = part_emitter_create(obj_particle_setup.particle_system);
