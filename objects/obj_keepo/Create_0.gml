hp_max = 10000000;
hp = hp_max;
damage_cooldown = 0;
damage_cooldown_max = 50;

reflection_inst = noone

centre_x = x + sprite_get_width(sprite_index)/2;
centre_y = y + sprite_get_height(sprite_index)/2;

bottom_y = y + sprite_get_height(sprite_index)

#region combat
attacking = false;
hit_by_attack = ds_list_create();

global.critical_chance = 0.10;
global.critical_modifier = 1.10;

combat_allowed = false;
global.bullet_speed = 7;
bullet_cooldown = 0;
bullet_cooldown_max = 20;
global.bullet_damage = 20;
global.bullet_damage_variation = 10;
global.bullet_range = 15;
global.bullet_spread = 10;
shoot_mode = "continuous";

bomb_cooldown = 0;
bomb_cooldown_max = 20;
global.bomb_damage = 50;
global.bomb_damage_variation = 10;
global.bomb_distance_max = 30;


#region SECONDARY WEAPONS
enum secondaries
{
	none = 0, 
	bomb = 1, 
	bombScatter = 2,
	bombCircle = 3,
	bombCircleSurround = 4,
	bombSuck = 5,
	bulletCircleSurround = 6
}
secondary_weapons = []
// allow for different attacks to be assigned to attack buttons
//"empty" ability
secondary_weapons[secondaries.none] = function() {}
secondary_weapons[secondaries.bomb] = function()
{
	// throw a bomb in the direction of the mouse, up to a certain range
	// bomb will slide along the ground slightly upon landing
	if bomb_cooldown == 0
	{
		bomb_cooldown = bomb_cooldown_max;
		with instance_create_depth(centre_x, centre_y, -9999, obj_bomb)
		{
			direction =	point_direction(other.centre_x, other.centre_y, mouse_x + irandom_range(-2,2), mouse_y + irandom_range(-2,2));
			speed = 5
			shootDistance = clamp(point_distance(other.centre_x, other.centre_y, mouse_x, mouse_y), 0, global.bomb_distance_max);
			shootOrigin_x = other.centre_x;
			shootOrigin_y = other.centre_y;
		}
	}	
}
secondary_weapons[secondaries.bombScatter] = function()
{
	if bomb_cooldown == 0
	{
		bomb_cooldown = bomb_cooldown_max;
		for(i = 0; i < 10; i++)
		{
			with instance_create_depth(centre_x, centre_y, -9999, obj_bomb)
			{
				direction =	irandom_range(0,360);
				speed = 5
				shootDistance = irandom_range(15,20);
				shootOrigin_x = other.centre_x;
				shootOrigin_y = other.centre_y;
			}
		}
	}	
}
secondary_weapons[secondaries.bombCircle] = function()
{
	if bomb_cooldown == 0
	{
		bomb_cooldown = bomb_cooldown_max;
		with instance_create_depth(centre_x, centre_y, -9999, obj_bomb_circle)
		{
			target = PLAYER_OBJ;
		}
	}	
}
secondary_weapons[secondaries.bombCircleSurround] = function()
{
	if bomb_cooldown == 0
	{
		bombCount = 5;
		angleDivision = 360/bombCount
		bomb_cooldown = bomb_cooldown_max;
		for(var i = 0; i < bombCount; i++)
		{
			with instance_create_depth(centre_x, centre_y, -9999, obj_bomb_circle)
			{
				target = PLAYER_OBJ;
				startingPosition = other.angleDivision * i;
			}
		}
	}	
}
secondary_weapons[secondaries.bombSuck] = function()
{
	// throw a bomb in the direction of the mouse, up to a certain range
	// bomb will slide along the ground slightly upon landing
	if bomb_cooldown == 0
	{
		bomb_cooldown = bomb_cooldown_max;
		with instance_create_depth(centre_x, centre_y, -9999, obj_bomb_suck)
		{
			direction =	point_direction(other.centre_x, other.centre_y, mouse_x + irandom_range(-2,2), mouse_y + irandom_range(-2,2));
			speed = 2
			shootDistance = clamp(point_distance(other.centre_x, other.centre_y, mouse_x, mouse_y), 0, global.bomb_distance_max);
			shootOrigin_x = other.centre_x;
			shootOrigin_y = other.centre_y;
		}
	}
}
secondary_weapons[secondaries.bulletCircleSurround] = function()
{
	if bomb_cooldown == 0
	{
		bulletCount = 5;
		angleDivision = 360/bulletCount
		bomb_cooldown = bomb_cooldown_max;
		for(var i = 0; i < bulletCount; i++)
		{
			with instance_create_depth(centre_x, centre_y, -9999, obj_bullet_circle)
			{
				target = PLAYER_OBJ;
				startingPosition = other.angleDivision * i;
			}
		}
	}	
}
secondary_selected = secondaries.bulletCircleSurround;
#endregion
#endregion

global.debug_mode = false;
global.high_contrast = false

global.monument_teleport_unlocked = false;
dashUnlocked = true;
enum charoption
{
	x,
	y,
	room,
	script,
	args
}
global.characterOptions = ds_map_create()
//global.characterOptions[? "luco"] = ds_map_create();
//global.characterOptions[? "luco"][? "room"] = rm_outside;
//global.characterOptions[? "luco"][? "x"] = 271;
//global.characterOptions[? "luco"][? "y"] = 264;
//global.characterOptions[? "luco"][? "script"] = dialogueResponses;
//global.characterOptions[? "luco"][? "args"] = ["luco_ravioli_1"];
//global.characterOptions[? "luco"][? "sprite"] = spr_luco;

global.latestGift = [];



global.relationshipLevelDislike = -3;
global.relationshipLevelNeutral = 0;
global.relationshipLevelFriend = 5;
global.relationshipLevelLove = 10;

//sleeves, luco, blue, hatman
global.relationships = ds_map_create();
global.relationships[? "sleeves"] = 0;
global.relationships[? "luco"] = 0;
global.relationships[? "blue"] = 0;
global.relationships[? "hat man"] = 0;

global.tutorialMail = false;
global.mailUnread = false;
mail_init();
//mail_create("???", "[its completely illegible]", 0, spr_letter, false, obj_pyramid, "luco", obj_sleeves, "sleeves", "sleeves_letter_2");

global.roomTitle = "";

global.inventory = ds_list_create();

global.pickedUpItems = ds_list_create();

global.coins = 0;

global.camera_target = PLAYER_OBJ;
global.camera_width = 384;
global.camera_height = 216;

global.windowOpen = false;
viewx = 0;
viewy = 0;
camWidth = camera_get_view_width(view_camera[0]);
camHeight = camera_get_view_height(view_camera[0]);
xModifier = 0;
yModifier = 0;
zoomModifier = 1;
zoomSpeed = 0.1;
viewSpeed = 0.1;

xspd = 0;
yspd = 0;

move_spd = 1;
sprint_spd = 2;

face = DOWN;

move_freeze = false;

trail_timer = 1;
default_trail_timer = 1;
trail_flash_time = 7;

default_emote_timer = 20;
emote_timer = 0;

zzz_default_timer = 50;
zzz_timer = 0;

sprinting = false;
sprint_default_footstep_timer = 12;
sprint_footstep_timer = 0;
walk_default_footstep_timer = 15;
walk_footstep_timer = 0;

dashing = false;
dash_countdown = 0;
dash_timer = 15;
dash_distance = 5;
dash_location_x = 0;
dash_location_y = 0;
dashing_across_gap = false;

sitting = false;
sleeping = false;


camera_zoom = false;

holding_item = false;
held_item = [];

save_message_timer_default = 50;
save_message_timer = 0;

load_message_timer_default = 50;
load_message_timer = 0;

global.notification_text = [];
global.notification_timer_default = 150;
global.notification_timer = 0;
notification_position = 0;

#region SPRITE SETS/OUTFITS
var sprite_set_array = [
	// default sprite set
	[
		"default",
		spr_keepo_portrait,																	//portrait
		spr_keepo_right, spr_keepo_up, spr_keepo_left, spr_keepo_down,						//walk
		spr_keepo_sprint_right, spr_keepo_up, spr_keepo_sprint_left, spr_keepo_sprint_down,	//sprint
		spr_keepo_shock,																	//shake emote
		spr_keepo_sit_left, spr_keepo_sit_right,											//sit emote
		spr_keepo_sleep_left, spr_keepo_sleep_right,										//sleep emote
		spr_keepo_dash_right, spr_keepo_dash_up, spr_keepo_dash_left, spr_keepo_dash_down	//dash 
	],
	// christmas hat sprite set
	[
		"christmas hat",
		spr_keepo_portrait,
		spr_keepo_christmas_right, spr_keepo_christmas_up, spr_keepo_christmas_left, spr_keepo_christmas_down,						
		spr_keepo_christmas_sprint_right, spr_keepo_christmas_up, spr_keepo_christmas_sprint_left, spr_keepo_christmas_sprint_down,	
		spr_keepo_christmas_shock,																				
		spr_keepo_christmas_sit_left, spr_keepo_christmas_sit_right,													
		spr_keepo_christmas_sleep_left, spr_keepo_christmas_sleep_right,																			
		spr_keepo_dash_right, spr_keepo_dash_up, spr_keepo_dash_left, spr_keepo_dash_down					
	],
	// blue sprite set
	[
		"blue",
		spr_keepo_portrait,
		spr_keepo_blue_right, spr_keepo_blue_up, spr_keepo_blue_left, spr_keepo_blue_down,						
		spr_keepo_blue_sprint_right, spr_keepo_blue_up, spr_keepo_blue_sprint_left, spr_keepo_blue_sprint_down,	
		spr_keepo_blue_shock,																				
		spr_keepo_blue_sit_left, spr_keepo_blue_sit_right,													
		spr_keepo_blue_sleep_left,	spr_keepo_blue_sleep_right,																		
		spr_keepo_dash_right, spr_keepo_dash_up, spr_keepo_dash_left, spr_keepo_dash_down					
	],
	// blue sprite set
	[
		"sleeves",
		spr_keepo_portrait,
		spr_keepo_sleeves_right, spr_keepo_sleeves_up, spr_keepo_sleeves_left, spr_keepo_sleeves_down,						
		spr_keepo_sleeves_sprint_right, spr_keepo_sleeves_up, spr_keepo_sleeves_sprint_left, spr_keepo_sleeves_sprint_down,	
		spr_keepo_sleeves_shock,																				
		spr_keepo_sleeves_sit_left, spr_keepo_sleeves_sit_right,													
		spr_keepo_sleeves_sleep_left, spr_keepo_sleeves_sleep_right,																		
		spr_keepo_dash_right, spr_keepo_dash_up, spr_keepo_dash_left, spr_keepo_dash_down					
	],
	// car sprite set
	[
		"frog car",
		spr_frog_car,
		spr_frog_car, spr_frog_car, spr_frog_car, spr_frog_car,						
		spr_frog_car, spr_frog_car, spr_frog_car, spr_frog_car,	
		spr_frog_car,																				
		spr_frog_car, spr_frog_car,													
		spr_frog_car, spr_frog_car,																			
		spr_frog_car, spr_frog_car, spr_frog_car, spr_frog_car					
	],
	// void inverse set
	[
		"void inverse",
		spr_keepo_portrait,																	//portrait
		spr_keepo_void_right, spr_keepo_void_up, spr_keepo_void_left, spr_keepo_void_down,	//walk
		spr_keepo_sprint_right, spr_keepo_up, spr_keepo_sprint_left, spr_keepo_sprint_down,	//sprint
		spr_keepo_shock,																	//shake emote
		spr_keepo_sit_left, spr_keepo_sit_right,											//sit emote
		spr_keepo_sleep_left, spr_keepo_sleep_right,										//sleep emote
		spr_keepo_dash_right, spr_keepo_dash_up, spr_keepo_dash_left, spr_keepo_dash_down	//dash 
	]

]

global.sprite_set_grid = create_ds_grid_from_array(sprite_set_array);

enum sprite_sets
{
	basic = 0,
	christmas = 1,
	blue = 2,
	sleeves = 3,
	frog_car = 4,
	void_inverse = 5
}

enum sprite_set_positions
{
	sprite_set_name = 0,
	sprite_portrait = 1,
	sprite_walk_right = 2,
	sprite_walk_up = 3,
	sprite_walk_left = 4,	
	sprite_walk_down = 5,
	sprite_sprint_right = 6,
	sprite_sprint_up = 7,
	sprite_sprint_left = 8,	
	sprite_sprint_down = 9,
	sprite_emote_shock = 10,
	sprite_emote_sit_left = 11,	
	sprite_emote_sit_right = 12,	
	sprite_emote_sleep_left = 13,
	sprite_emote_sleep_right = 14,
	sprite_dash_right = 15,
	sprite_dash_up = 16,
	sprite_dash_left = 17,
	sprite_dash_down = 18,
}

sprite_set = sprite_sets.basic;
global.unlocked_outfits = [0];
#endregion

#region TRAILS
// trails can be created with separate ranges for both smoke and sparks
// smoke being the larger blobs, whilst sparks are the small firefly-like effect
// first array sets the smoke colour, second sets the sparks
// for example: [[c_red], [c_blue]] will create a trail with red smoke, blue sparks
trail_array = [
	[[c_white], [c_white]],
	[[c_blue, c_purple, c_fuchsia], [c_blue, c_purple, c_fuchsia]],
	[[c_black, c_gray, c_dkgray],[c_black, c_gray, c_dkgray]],
	[[c_red],[c_red]],
	[[c_teal, c_aqua],[c_teal, c_aqua]],
	[[c_red, c_yellow],[c_red, c_yellow]],
	[[c_blue, c_purple],[c_white, c_purple]]
]
enum trails
{
	white = 0,
	space_dust = 1,
	smoke = 2,
	blood = 3,
	sea = 4,
	scarf = 5,
	stars = 6,
}

global.trailColour = trail_array[trails.space_dust];
#endregion

#region CHARACTER DIALOGUE PRESETS
// object
// portrait sprite
// font
// object sprite
// sound
global.dialogue_presets_array = [
	[obj_pyramid, spr_luco_portrait, fnt_pixellari, spr_luco, noone, true, c_orange],
	[obj_pyramid, spr_luco_portrait_shock, fnt_pixellari, spr_luco_shock, noone, true, c_orange],
	[obj_sleeves, spr_sleeves_portrait, fnt_pixellari, spr_sleeves, noone, true, c_green],
	[obj_sleeves, spr_sleeves_portrait_shock, fnt_pixellari, spr_sleeves_shock, noone, true, c_green],
	[obj_sleeves, spr_sleeves_portrait_sad, fnt_pixellari, spr_sleeves, noone, true, c_green],
	[obj_sleeves, spr_sleeves_portrait_happy, fnt_pixellari, spr_sleeves, noone, true, c_green],
	[obj_old_man_small, spr_old_man_small_portrait, fnt_pixellari, spr_old_man_small, noone, true, c_black],
	[obj_old_man_small, spr_old_man_small_portrait_shock, fnt_pixellari, spr_old_man_small_shock, noone, true, c_black],
	[obj_old_man_small, spr_old_man_small_portrait_nose, fnt_pixellari, spr_old_man_small_nose, noone, true, c_black],
	[obj_bull, spr_bull_portrait, fnt_pixellari, spr_bull, noone, true, c_black],
	[obj_skull, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_hotdog_stand, spr_kevin_portrait, fnt_pixellari, spr_hotdog_stand, noone, true, c_black],
	[obj_hotdog_stand, spr_kevin_portrait_shock, fnt_pixellari, spr_hotdog_stand_shock, noone, true, c_black],
	[obj_tony, spr_tony_portrait, fnt_pixellari, spr_tony, noone, true, c_black],
	[obj_tony, spr_tony_portrait_shock, fnt_pixellari, spr_tony_shock, noone, true, c_black],
	[obj_tony, spr_tony_portrait, fnt_pixellari, spr_tony_mow, noone, true, c_black],
	[obj_tony, spr_tony_portrait_cry, fnt_pixellari, spr_tony_cry, noone, true, c_black],
	[obj_normal_dude, spr_normal_dude_portrait, fnt_pixellari, spr_normal_dude, noone, true, c_black],
	[obj_wizard, spr_wizard_portrait, fnt_pixellari, spr_wizard, noone, true, c_black],
	[obj_wizard, spr_wizard_portrait_shock, fnt_pixellari, spr_wizard_shock, noone, true, c_black],
	[obj_wizard, spr_wizard_portrait_shock, fnt_pixellari, spr_wizard_sleep, noone, true, c_black],
	[PLAYER_OBJ, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_blue, spr_blue_portrait, fnt_pixellari, spr_blue_right, noone, true, c_black],
	[obj_blue, spr_blue_portrait_sad, fnt_pixellari, spr_blue_right, noone, true, c_black],
	[obj_blue, spr_blue_portrait_shock, fnt_pixellari, spr_blue_right, noone, true, c_black],
	[obj_man, spr_man, fnt_pixellari, spr_man, noone, true, c_black],
	[obj_vase, spr_vase_portrait, fnt_pixellari, spr_vase, noone, true, c_black],
	[obj_vase, spr_vase_broken_portrait, fnt_pixellari, spr_vase_broken, noone, true, c_black],
	[obj_negri, spr_negri_portrait, fnt_pixellari, spr_negri, noone, true, c_black],
	[obj_hat_man, spr_hat_man_portrait, fnt_pixellari, spr_hat_man_right, noone, true, c_purple],
	[obj_hat_man, spr_hat_man_portrait_sad, fnt_pixellari, spr_hat_man_sad, noone, true, c_purple],
	[obj_hat_man, spr_hat_man_portrait_happy, fnt_pixellari, spr_hat_man_right, noone, true, c_purple],
	[obj_hotdog_friend, spr_hotdog_friend_portrait, fnt_pixellari, spr_hotdog_friend, noone, true, c_black],
	[obj_starhead, spr_starhead_portrait, fnt_pixellari, spr_starhead, noone, true, c_black],
	[obj_starhead, spr_starhead_portrait_smile, fnt_pixellari, spr_starhead, noone, true, c_black],
	[obj_starhead, spr_starhead_portrait_blush, fnt_pixellari, spr_starhead, noone, true, c_black],
	[obj_boots, spr_boots_portrait, fnt_pixellari, spr_boots, noone, true, c_black],
	[obj_boots, spr_boots_portrait, fnt_kaomoji, spr_boots, noone, true, c_black],
	[obj_pyramid_blank, spr_luco_blank_portrait, fnt_pixellari, spr_luco_blank, noone, true, c_black],
	[obj_pyramid_blank, spr_luco_blank_portrait_shock, fnt_pixellari, spr_luco_blank_shock, noone, true, c_black],
	[obj_villain, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_villain, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_villain, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_villain, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_robot, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
	[obj_moody, spr_skull_portrait, fnt_pixellari, spr_skull, noone, true, c_black],
]

enum dialogue_presets 
{
	luco_default,
	luco_shock,
	sleeves_default,
	sleeves_shock,
	sleeves_sad,
	sleeves_happy,
	old_man_small_default,
	old_man_small_shock,
	old_man_small_nose,
	bull_default,
	skull_default,
	kevin_default,
	kevin_shock,
	tony_default,
	tony_shock,
	tony_mow,
	tony_cry,
	normal_dude,
	wizard_default,
	wizard_shock,
	wizard_sleep,
	skull_held,
	blue_default,
	blue_sad,
	blue_shock,
	man_default,
	vase_default,
	vase_broken,
	negri,
	hat_default,
	hat_sad,
	hat_happy,
	hotdog_default,
	star_default,
	star_smile,
	star_blush,
	boots,
	boots_kaomoji,
	luco_blank,
	luco_blank_shock,
	villain_default,
	villain_shock,
	villain_happy,
	villain_diabolical,
	robot_default,
	moody_default
}
#endregion

#region FOLLOWERS
follow_movement_array_size = 64;
for(var i = follow_movement_array_size-1; i >= 0; i--){
    pos_x[i] = x;
    pos_y[i] = y;
}

followers = [noone, noone, noone];
#endregion