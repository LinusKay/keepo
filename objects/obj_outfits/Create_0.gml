event_inherited()

frame_index = 0;
pose_index = 1;

outfits_num = array_length(global.unlocked_outfits);

min_outfits_display = 0;

if outfits_num < 15 { outfit_count_display =  outfits_num; }
else { outfit_count_display =  15; }

max_outfits_display = min_outfits_display + outfit_count_display;

outfit_selected = 0;

border = 20;


