//Shader uniform variable setup
u_pos = shader_get_uniform(shd_light,"u_pos");
u_pos2 = shader_get_uniform(shd_shadow,"u_pos");
u_z = shader_get_uniform(shd_light,"u_z");
u_z2 = shader_get_uniform(shd_shadow,"u_z");



depth = -999

vertex_format_begin()
vertex_format_add_position_3d()
vf = vertex_format_end()
vb = vertex_create_buffer()
