draw_self();
if global.debugMode
{
	draw_set_alpha(.5);
	draw_circle_color(x, y, explosion_radius, c_red, c_red, false)
	draw_set_alpha(1);
}