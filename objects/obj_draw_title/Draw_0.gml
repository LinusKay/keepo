/// @description Insert description here
// You can write your code in this editor
if instance_place(x, y, PLAYER_OBJ)
{
	if text != 0 {
		draw_set_font(font);
		draw_text(xPos, yPos, text);
	}
	if sprite != 0 {
		draw_sprite_ext(sprite, 0, xPos, yPos, 1.5, 1.5, 0, c_white, 1);
	}
}