event_inherited()

min_items_display = 0;

if inventory_get_size() < 13 { item_count_display =  inventory_get_size(); }
else { item_count_display =  13; }

max_items_display = min_items_display + item_count_display;

item_selected = 0;

border = 20;