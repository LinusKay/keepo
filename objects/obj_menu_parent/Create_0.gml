x1 = (RESOLUTION_W - menu_width)/2
y1 = (RESOLUTION_H - menu_height)/2

x2 = x1 + menu_width
y2 = y1 + menu_height

tab_width = 100
tab_space = 10
border = 20

side_left_width = 500
side_right_width = menu_width - side_left_width - border

frame_count = 0

menu_list = [
	[obj_inventory, spr_satchel, spr_satchel_bw],
	[obj_journal, spr_scroll, spr_scroll_bw],
	[obj_outfits, spr_scarf, spr_scarf_bw],
	[obj_relationship_tracker, spr_heart, spr_heart_bw]
]
menu_item = 0
for(var i = 0; i < array_length(menu_list); i++) {
	if object_index == menu_list[i][0] {
		menu_item = i
	}
}



title_space = font_get_size(fnt_pixellari)