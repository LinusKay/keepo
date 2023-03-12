                                          key_debug = keyboard_check_pressed(vk_f10);
if key_debug
{
	if global.debug_mode 
	{
		//global.debugEmoteReactionRange = false;
		//global.debugInventoryQuestItemStage = false;
		global.debug_mode = false;
		notification("debug mode disabled")
	}
	else
	{
		//global.debugEmoteReactionRange = true;
		//global.debugInventoryQuestItemStage = true;
		global.debug_mode = true;
		notification("debug mode enabled")
	}
}
if keyboard_check_pressed(vk_f3) global.high_contrast = !global.high_contrast

// check for movement keys. if key pressed, value = 1, otherwise 0
right_key = keyboard_check(vk_right) || keyboard_check(ord("D"));
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));

shift_key = keyboard_check(vk_lshift);

dash_key = keyboard_check(vk_space);

emote_key_1 = keyboard_check(ord("1"));
emote_key_2 = keyboard_check(ord("2"));

sit_key = keyboard_check_pressed(ord("3"));
sleep_key = keyboard_check_pressed(ord("4"));

interact_key = keyboard_check_pressed(ord("F"));

key_camera = keyboard_check_pressed(ord("V"));

key_inventory = keyboard_check_pressed(ord("I")) + keyboard_check_pressed(vk_tab);
key_relationship = keyboard_check_pressed(ord("R"));
key_journal = keyboard_check_pressed(ord("J"));
key_outfits = keyboard_check_pressed(ord("O"));

key_pause = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"));

key_click_left = mouse_check_button(mb_left);
key_click_left_release = mouse_check_button_released(mb_left);
key_click_right = mouse_check_button(mb_right);

key_shoot_mode = keyboard_check_pressed(vk_lcontrol);

centre_x = x + sprite_get_width(sprite_index)/2;
centre_y = y + sprite_get_height(sprite_index)/2;

bottom_y = y + sprite_get_height(sprite_index)

//if in_sequence move_freeze = true else move_freeze = false
if instance_exists(obj_textbox) || instance_exists(obj_pause_settings){
	move_freeze = true
}

//set sprite
//mask_index = sprite[DOWN];
mask_index = spr_keepo_down;
image_blend = c_white;


if key_pause
{
	if !instance_exists(obj_textbox) && !instance_exists(obj_pause_settings)
	{
		if !global.windowOpen{
			global.game_paused = true;
			move_freeze = true;
			instance_create_depth(0, 0, 0, obj_pause_settings);
			global.windowOpen = true;
		}
	}
}

if key_inventory
{
	if !instance_exists(obj_textbox) && !instance_exists(obj_pause_settings){
		close_windows_except(obj_inventory);
		move_freeze = true;
		if !instance_exists(obj_inventory){	
			instance_create_depth(0, 0, 0, obj_inventory); 
			global.windowOpen = true;
		}
	}
}

if key_journal
{
	if !instance_exists(obj_textbox) && !instance_exists(obj_pause_settings){
		close_windows_except(obj_journal);
		move_freeze = true;
		if !instance_exists(obj_journal){	
			instance_create_depth(0, 0, 0, obj_journal); 
			global.windowOpen = true;
		}
	}
}

if key_outfits
{
	if !instance_exists(obj_textbox) && !instance_exists(obj_pause_settings){
		close_windows_except(obj_outfits);
		move_freeze = true;
		if !instance_exists(obj_outfits){	
			instance_create_depth(0, 0, 0, obj_outfits); 
			global.windowOpen = true;
		}
	}
}

if key_relationship
{
	if !instance_exists(obj_textbox) && !instance_exists(obj_pause_settings){
		close_windows_except(obj_relationship_tracker);
		move_freeze = true;
		if !instance_exists(obj_relationship_tracker){ 
			instance_create_depth(0, 0, 0, obj_relationship_tracker);
			global.windowOpen = true;
		}
	}
}

//---------- CAMERA --------------
// allow camera zoom switching

#region CAMERA
if key_camera 
{
	if camera_zoom 
	{ 
		camera_zoom = false; 
		global.camera_width = 384;
		global.camera_height = 216;
	}
	else 
	{ 
		camera_zoom = true; 
		global.camera_width = 192;
		global.camera_height = 108;
	} 
}
if !instance_exists(global.camera_target) global.camera_target = PLAYER_OBJ;
// set up smooth follow camera
// clamp disallows moving camera outside of room bounds
viewx = clamp(lerp(viewx, global.camera_target.x, viewSpeed) + xModifier, 0 + camera_get_view_width(view_camera[0])/2, room_width - camera_get_view_width(view_camera[0])/2);
viewy = clamp(lerp(viewy, global.camera_target.y, viewSpeed) - yModifier, 0 + camera_get_view_height(view_camera[0])/2, room_height - camera_get_view_height(view_camera[0])/2);
camWidth = lerp(camWidth, global.camera_width * zoomModifier, zoomSpeed);
camHeight = lerp(camHeight, global.camera_height * zoomModifier, zoomSpeed);
vm = matrix_build_lookat(viewx, viewy, -10, viewx, viewy,  0, 0, 1, 0);
pm = matrix_build_projection_ortho(camWidth, camHeight, -9999, 9999);
camera_set_view_mat(view_camera[0], vm);
camera_set_proj_mat(view_camera[0], pm);
#endregion


if instance_place(x,y, obj_sightseeing)
{
	xModifier = 0;	
	yModifier = 5;	
	zoomModifier = 2;
	zoomSpeed = 0.005;
}
else
{
	xModifier = 0;	
	yModifier = 0
	zoomModifier = 1;
	zoomSpeed = 0.05;
}


if emote_key_1{
	event_fire(event.playerEmoteShock);
	sleeping = false;
	sitting = false;
	sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_shock, sprite_set];	
	if instance_exists(obj_sleeves){
		var friend = instance_nearest(x, y, obj_sleeves);
		var friend_distance = point_distance(x, y, friend.x, friend.y);
		if friend_distance < 25 {
			friend.sprite_index = spr_sleeves_shock;
			friend.shock_time = friend.shock_timer;
		}
	}
	if instance_exists(obj_wizard)
	{
		var friend = instance_nearest(x, y, obj_wizard);
		var friend_distance = point_distance(x, y, friend.x, friend.y - sprite_get_height(friend.sprite_index)/2);
		if friend_distance < 45 {
			friend.sprite_index = spr_wizard_shock;
			friend.shock_time = friend.shock_timer;
		}	
	}
	return;
}

emote_timer--;
	
if emote_key_2{
	sleeping = false;
	sitting = false;
	if emote_timer <= 0{
		//spawn trail
		instance_create_layer(x + 8, y - 1, "effects", obj_emote_heart);
		event_fire(event.playerEmoteBubbleHeart);
		emote_timer = default_emote_timer;
	}
	
}

if sit_key {
	event_fire(event.playerEmoteSit);
	sleeping = false;
	if sitting {sitting = false; mask_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_down, sprite_set];}
	else { sitting = true; }
	
	switch(face){
		case RIGHT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sit_right, sprite_set];
			break;
		case UP:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sit_right, sprite_set];
			break;
		case LEFT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sit_left, sprite_set];
			break;
		case DOWN:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sit_left, sprite_set];
			break;
	}
}



if sleep_key {
	event_fire(event.playerEmoteSleep);
	sitting = false;
	if sleeping {sleeping = false; mask_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sleep_right, sprite_set];}
	else { sleeping = true; }
	
	switch(face){
		case RIGHT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sleep_right, sprite_set];
			break;
		case UP:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sleep_right, sprite_set];
			break;
		case LEFT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sleep_left, sprite_set];
			break;
		case DOWN:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_emote_sleep_left, sprite_set];
			break;
	}
}

if sleeping 
{
	zzz_timer--;
	if zzz_timer <= 0{
		//spawn footstep
		instance_create_layer(x + irandom_range(-2,7), y - irandom_range(3,7), "effects", obj_zzz);
		zzz_timer = zzz_default_timer;
	}	
}


if !shift_key { 
	// calculate movement direction/speed
	// if right key pressed (1 - 0 = 1) then add one pixel to x position
	// if left key pressed (0 - 1 = -1) then remove one pixel from x position
	// if down key pressed (1 - 0 = 1) then add one pixel to y position
	// if up key pressed (0 - 1 = -1) then remove one pixel from y position
	xspd = (right_key - left_key) * move_spd;
	yspd = (down_key - up_key) * move_spd;
	sprinting = false;
	}
else {
	sprinting = true;
	xspd = (right_key - left_key) * sprint_spd;
	yspd = (down_key - up_key) * sprint_spd;
}


if !move_freeze {
if yspd == 0 {
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
// ensure player will definitely face the right way with their movement
// if facing direction contradicts moving direction, flip facing direction
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

if xspd == 0 {
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
	
if yspd == 0 {
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}
// ensure player will definitely face the right way with their movement
// if facing direction contradicts moving direction, flip facing direction
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

if xspd == 0 {
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
}
// disallow movement when frozen
if move_freeze {
	xspd = 0;
	yspd = 0;
	dashing = false;
	dash_countdown = 0;
}



if !move_freeze && (xspd != 0 || yspd != 0) {
	//set sprint settings
	if sprinting && (xspd != 0 || yspd != 0){
		switch(face){
			case RIGHT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_sprint_right, sprite_set];
				break;
			case UP:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_sprint_up, sprite_set];
				break;
			case LEFT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_sprint_left, sprite_set];
				break;
			case DOWN:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_sprint_down, sprite_set];
				break;
		}
		sprint_footstep_timer--;
		if sprint_footstep_timer <= 0 && !dashing && sprinting{
			//spawn footstep
			instance_create_layer(x, y + irandom_range(3,7), "effects", obj_footstep);
			sprint_footstep_timer = sprint_default_footstep_timer;
			//if !audio_is_playing(snd_step) { play_sfx(snd_step, random_range(.8,1.2)) }
		}
	
	}
	//set walk sprites
	else {
		switch(face){
			case RIGHT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_right, sprite_set];
				break;
			case UP:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_up, sprite_set];
				break;
			case LEFT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_left, sprite_set];
				break;
			case DOWN:
				//sprite_index = sprite[DOWN];
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_down, sprite_set];
				break;
		}
	}

	// collisions
	if place_meeting(x + xspd, y, obj_wall) == true {
		xspd = 0;	
	}
	if place_meeting(x, y + yspd, obj_wall) == true {
		yspd = 0;
	}
	
	
	// dash move
	// if countdown present, lower
	// if pressed dash key and no countdown start countdown, set dashing true
	if dash_countdown > 10 && dash_countdown < dash_timer { dashing = true; } else { dashing = false; }
	if dash_key && dash_countdown <= 0 && dashUnlocked {
		dash_countdown = dash_timer; 
		play_sfx(snd_dash, random_range(.6, 1.4))
		event_fire(event.playerDashStart);
		}
	if dash_countdown == dash_timer { dash_location_x = x; dash_location_y = y;}
	
	if dashing {
		
		mask_index = global.sprite_set_grid[# sprite_set_positions.sprite_dash_down, sprite_set];
		
		switch(face){
			case RIGHT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_dash_right, sprite_set];
				if frameCount % trail_flash_time == 0 image_blend = global.trailColour[0][0] else image_blend = c_white;
				break;
			case UP:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_dash_up, sprite_set];
				if frameCount % trail_flash_time == 0 image_blend = global.trailColour[0][0] else image_blend = c_white;
				break;
			case LEFT:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_dash_left, sprite_set];
				if frameCount % trail_flash_time == 0 image_blend = global.trailColour[0][0] else image_blend = c_white;
				break;
			case DOWN:
				sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_dash_down, sprite_set];
				if frameCount % trail_flash_time == 0 image_blend = global.trailColour[0][0] else image_blend = c_white;
				break;
		}
		
		if layer_exists(layer_get_id("effects")){
			trail_timer--;
			if trail_timer <= 0{
				//spawn trail
				for(var i = 0; i < irandom_range(1,3); i++)
				{
					instance_create_layer(x + irandom_range(-2,2), y + irandom_range(-3, 3), "effects", obj_keepo_trail);
				}
				for(var i = 0; i < irandom_range(1,3); i++)
				{
					instance_create_layer(x + irandom_range(-3, 3), y + 3 + irandom_range(-3, 3), "effects", obj_trail_sparks);
				}
				trail_timer = default_trail_timer;
			}
		}
			xspd = (right_key - left_key) * move_spd;
			yspd = (down_key - up_key) * move_spd;
			x += xspd*dash_distance;
			y += yspd*dash_distance;	
			if dash_countdown > 11 && place_meeting(x + xspd*dash_distance, y + yspd*dash_distance, obj_wall){
				dashing_across_gap = true;
			}
			// each step, if location safe, set dash failsafe location to current location
			if dash_countdown > 11 && !place_meeting(x, y, obj_wall){
				dash_location_x = x;
				dash_location_y = y;
			}
			if dashing_across_gap {
				
				if !place_meeting(x + xspd*dash_distance, y + yspd*dash_distance, obj_wall){
					dashing_across_gap = false;
					dashing = false;
					event_fire(event.playerDashGapStart);
				}
				if dash_countdown < 11 && place_meeting(x, y, obj_wall) {
					x = dash_location_x;
					y = dash_location_y;
				}
			}
		else {
			dashing = false;
			event_fire(event.playerDashEnd);
		}
	}
	
	else {
		
		if !place_meeting(x + xspd, y + yspd, obj_wall){	
			x += xspd;
			y += yspd;
			if xspd != 0 || yspd != 0 
			{
				walk_footstep_timer--;
				if walk_footstep_timer <= 0 && !sprinting{
					//spawn footstep
					instance_create_layer(x, y + irandom_range(3,7), "effects", obj_footstep);
					walk_footstep_timer = walk_default_footstep_timer;
					//if !audio_is_playing(snd_step) { play_sfx(snd_step, random_range(.8,1.2))}
				}
			}		
		}
	}
}
		
	interact_distance = 14;
	switch(face) {
		case RIGHT: activatedEntity = instance_place(x + interact_distance, y, parent_entity); break;
		case LEFT: activatedEntity = instance_place(x - interact_distance, y, parent_entity); break;
		case UP: activatedEntity = instance_place(x, y - interact_distance, parent_entity); break;
		case DOWN: activatedEntity = instance_place(x, y + interact_distance, parent_entity); break;
	}
	
	// pick up item if close
	if activatedEntity == noone && interact_key && !global.windowOpen
	{
		nearest_item = instance_nearest(centre_x, centre_y, parent_item);
		if nearest_item != undefined && distance_to_object(nearest_item) <= 10
		{
			with nearest_item
			{
				if forSale 
				{
					with instance_create_depth(0, 0, -999, obj_buy_item)
					{
						item = PLAYER_OBJ.nearest_item;
					}
				}
				else
				{
					play_sfx(snd_pop, random_range(0.8, 1.2));
					inventory_add(itemName, itemDescription, itemCost, sprite_index, canGift, false, lovedBy, likedBy, dislikedBy, hatedBy, questItem, questID, questStage);
					ds_list_add(global.pickedUpItems, item_room_id);
					event_fire(event.playerPickUpItem);
					var _itemName = itemName
					//notification("NEW ITEM: " + itemName);
					#region NOTIFICATION
						if(!instance_exists(obj_notification)) { instance_create_layer(0, 0, "Instances", obj_notification) }
						with(obj_notification) {
							if(!ds_exists(ds_notifications, ds_type_grid)){
								ds_notifications = ds_grid_create(2, 1)
								var not_grid = ds_notifications
								not_grid[# 0, 0] = 1
								not_grid[# 1, 0] = _itemName
							}
							else {
								event_perform(ev_other, ev_user0)
								var not_grid = ds_notifications
								var grid_height = ds_grid_height(not_grid)
								var in_grid = false
								for(var i = 0; i < grid_height; i++) {
									if(_itemName == not_grid[# 1, i]) {
										not_grid[# 1, i] += 1
										in_grid = true
										break
									}
									
								}
								if(!in_grid) {
									ds_grid_resize(not_grid, 2, grid_height + 1)
									not_grid[# 0, grid_height] = 1
									not_grid[# 1, grid_height] = _itemName
								}
							}
						}
					#endregion
				}
			}
		}
	}
	
	//interact with entity
	if activatedEntity != noone && activatedEntity.entityActivateScript != -1{
		if activatedEntity.interactHighlight {
			if !instance_exists(obj_arrow_down)
			{
				instance_create_layer(activatedEntity.x, activatedEntity.y - sprite_get_height(activatedEntity.sprite_index) - 3, "effects", obj_arrow_down)
			}
			if !instance_exists(obj_shadow_highlight)
			{
				instance_create_layer(activatedEntity.x, activatedEntity.y, "effects", obj_shadow_highlight)
			}
		}
		if interact_key && !instance_exists(obj_textbox) && !global.windowOpen
		{
			if !holding_item || !activatedEntity.romanceable || !activatedEntity.entityNPC { scr_execute_array(activatedEntity.entityActivateScript, activatedEntity.entityActivateArgs); }
			else 
			{ 
				if inventory_give_item(held_item, activatedEntity)
				{
					inventory_remove_item(ds_list_find_value(held_item, 0));
					PLAYER_OBJ.holding_item = false;
					PLAYER_OBJ.held_item = [];
				}
			}
		}
	}
	else
	{
		if instance_exists(obj_arrow_down){
			instance_destroy(obj_arrow_down)
		}	
		if instance_exists(obj_shadow_highlight){
			instance_destroy(obj_shadow_highlight)
		}	
	}

if xspd != 0 || yspd != 0 {
	sitting = false;	
	sleeping = false;	
}
//animate
if xspd == 0 && yspd == 0 && !sitting && !sleeping && !attacking{
	dashing = false;
	if place_meeting(x, y, obj_wall) {
		x = dash_location_x;
		y = dash_location_y;
	}
	switch(face){
		case RIGHT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_right, sprite_set];
			break;
		case UP:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_up, sprite_set];
			break;
		case LEFT:
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_left, sprite_set];
			break;
		case DOWN:
			//sprite_index = sprite[DOWN];
			sprite_index = global.sprite_set_grid[# sprite_set_positions.sprite_walk_down, sprite_set];
			break;
	}
	image_index = 0;
}

//depth
depth = -bbox_bottom;
if dash_countdown > 0 { dash_countdown -= 0.5 ;}

if keyboard_check_pressed(vk_numpad0) {global.trailColour = trail_array[0]; notification("trail changed: white")}
if keyboard_check_pressed(vk_numpad1) {global.trailColour = trail_array[1]; notification("trail changed: space dust")}
if keyboard_check_pressed(vk_numpad2) {global.trailColour = trail_array[2]; notification("trail changed: smoke")}
if keyboard_check_pressed(vk_numpad3) {global.trailColour = trail_array[3]; notification("trail changed: blood")}
if keyboard_check_pressed(vk_numpad4) {global.trailColour = trail_array[4]; notification("trail changed: sea")}
if keyboard_check_pressed(vk_numpad5) {global.trailColour = trail_array[5]; notification("trail changed: scarf")}
if keyboard_check_pressed(vk_numpad6) {global.trailColour = trail_array[6]; notification("trail changed: stars")}

#region FOLLOWERS
// record step location
for(var i = follow_movement_array_size-1; i > 0; i--){
    pos_x[i] = pos_x[i-1];
    pos_y[i] = pos_y[i-1];
}
pos_x[0] = centre_x;
pos_y[0] = bottom_y;
#endregion