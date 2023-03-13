x_start = PLAYER_OBJ.view_x;
y_start = PLAYER_OBJ.view_y

camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]);

emitter_leaves = part_emitter_create(obj_particle_setup.particle_system);
