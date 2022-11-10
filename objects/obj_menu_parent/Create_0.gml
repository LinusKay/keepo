x1 = RESOLUTION_W/2 - menuWidth/2
y1 = RESOLUTION_H/2 - menuHeight/2

x2 = x1 + menuWidth 
y2 = y1 + menuHeight

tabWidth = 100
tabSpace = 10
border = 20

sideLeftWidth = 500
sideRightWidth = menuWidth - sideLeftWidth - border

frameCount = 0

menuList = [
	[obj_inventory, spr_item_ruby, spr_item_ruby_bw], 
	[obj_journal, spr_letter, spr_letter_bw], 
	[obj_outfits, spr_outfit, spr_outfit], 
	//[obj_relationship_tracker, spr_heart_full, spr_heart_empty]
]
menuItem = 0
for(var i = 0; i < array_length(menuList); i++) {
	if object_index == menuList[i][0] menuItem = i
}



titleSpace = font_get_size(fnt_pixellari)