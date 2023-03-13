scr_nineslice_box_stretch(spr_textbox, x1, y1, x2, y2, 0);

draw_text(x2 - x1 + string_width("Buy item?") - 200, y1 + 20, "Buy item?");
draw_sprite_ext(item.sprite_index, 0, x1 + 50, y1 + 50, 15, 15, 0, c_white, 1);
draw_text(x1 + 200, y1 + 50, item.item_name);
draw_text(x1 + 200, y1 + 100, "Cost: " + string(item.item_cost));


// item selection
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
choice += key_down - key_up;
if key_up play_sfx(snd_click4);
if key_down play_sfx(snd_click4, 0.8);
	
// if go up on first item select last
if choice < 0 choice = 1;
if choice > 1 choice = 0;


if choice = 0
{
	draw_text(x1 + 200, y1 + 150, "> yes");	
	draw_text(x1 + 200, y1 + 200, "no");	
}
else
{
	draw_text(x1 + 200, y1 + 150, "yes");	
	draw_text(x1 + 200, y1 + 200, "> no");	
}

if keyboard_check_pressed(vk_escape) 
{
	instance_destroy();
	PLAYER_OBJ.move_freeze = false;	
}

if keyboard_check_pressed(vk_space)
{
	if choice = 0
	{
		with item {
			if global.coins >= item_cost
			{
				global.coins -= item_cost
				play_sfx(snd_pop, random_range(0.8, 1.2));
				inventory_add(item_name, item_description, item_cost, sprite_index, can_gift, false, loved_by, liked_by, disliked_by, hated_by, quest_item, questID, questStage);
				if !for_sale_unlimited ds_list_add(global.picked_up_items, item_room_id);
				event_fire(event.player_pick_up_item);
				notification("NEW ITEM: " + item_name);	
			}
			else
			{
				print("not enough coins");
			}
		}
	}
	instance_destroy();
	PLAYER_OBJ.move_freeze = false;	
}

//if global.coins >= item_cost
//{
//	global.coins -= item_cost
//	play_sfx(snd_pop, random_range(0.8, 1.2));
//	inventory_add(item_name, item_description, item_cost, sprite_index, can_gift, false, loved_by, liked_by, disliked_by, hated_by, quest_item, questID, questStage);
//	ds_list_add(global.picked_up_items, item_room_id);
//	event_fire(event.player_pick_up_item);
//	notification("NEW ITEM: " + item_name);	
//}
//else
//{
					
//}