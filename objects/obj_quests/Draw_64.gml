var str = "";
if !ds_exists(global.tracked_quests, ds_type_list) { global.tracked_quests = ds_list_create() }
for(var i = 0; i < ds_list_size(global.tracked_quests); i++)
{
	var stage = ds_quests[# 1, ds_list_find_value(global.tracked_quests, i)];
	if stage != -1
	{
		var array = ds_quests[# 3, ds_list_find_value(global.tracked_quests, i)];
		str += "\n" + string_upper(ds_quests[# 0, ds_list_find_value(global.tracked_quests, i)]) + ": " + array[stage];
	}
	
}

draw_set_font(fnt_pixellari_small);
draw_set_halign(0)
draw_text_color(0, 0, str, c_white, c_white, c_white, c_white, 1);