enum quest
{
	test_out_your_dash = 0,
	soup_time = 1,
	ravioli_rumble = 2,
	abscence_of_scents = 3,
	getting_fit = 4,
	skull_delivery = 5,
	hotdog_hunt = 6,
	mow_problem = 7,
	dont_break_anything = 8
}

// Name
// Progress stage
//		-1 = unstarted
//		0 (or more) = started
// Description
// Stage descriptions
// Rewards
//		coins
//		item
//		outfit id
//		new quest id

var quest_array = [
	[
		"Test out your dash",
		0,
		"Your dash ability is super useful! Give it a try!",
		["Press space to test your dash", "Dash across a gap"],
		[-1, -1, sprite_sets.christmas, quest.getting_fit]
	],
	[
		"Soup Time",
		-1,
		"Sleeves needs some soup to pull them out of the dumps. Can you find any?",
		["Find soup", "Bring some soup to Sleeves"],
		[-1, -1, sprite_sets.sleeves, -1]
	],
	[
		"Ravioli Rumble",
		-1,
		"Distaster! Luco has lost their famous ravioli recipe. Find it for them!",
		["Find Luco's ravioli recipe", "Bring the recipe to Luco"],
		[-1, -1, -1, -1]
	],
	[
		"Abscence of Scents",
		-1,
		"An old man wished he could still smell his favourite flowers. If only you had something to help him out.",
		["Find something to help the man's nose", "Bring the nose to the old man"],
		[10, -1, -1, -1]
	],
	[
		"Getting Fit",
		-1,
		"You now have a range of outfits to choose from. Maybe its time to try out a new look!",
		["Change your outfit"],
		[10, -1, -1, -1]
	],
	[
		"Skull Delivery",
		-1,
		"Find the skull's body and return it!",
		["Find skeleton"],
		[-1, -1, sprite_sets.blue, -1 ]
	],
	[
		"Hotdog Hunt",
		-1,
		"Whatever inhabits the hotdog stand has lost its hotdogs. Its probably in your best interest to find them.",
		["Find the missing box of hotdogs", "Return the hotdogs to the stand"],
		[-1, -1, -1, -1]
	],
	[
		"Mow Problem",
		-1,
		"Tony's mower is broken, and he really needs a new one.",
		["Find a replacement mower", "Give the mower to Tony"],
		[-1, -1, -1, -1]
	],
	[
		"Don't Break Anything",
		-1,
		"Leave the man's house without breaking anything... please",
		["Please just go"],
		[-1, -1, -1, -1]
	]
];

ds_quests = create_ds_grid_from_array(quest_array);
ds_quests_number = ds_grid_height(ds_quests);
global.trackedQuests = ds_list_create();

#region QUEST STAGE GLOBAL VARIABLES
	#region TEST YOUR DASH
	global.quest_dashTest = false;
	global.quest_dashGap = false;
	#endregion
	#region SOUP TIME
	global.quest_soup_time_get_soup = false;
	global.quest_soup_time_deliver_soup = false;
	#endregion
	#region RAVIOLI RUMBLE
	global.quest_ravioli_rumble_get_recipe = false;
	global.quest_ravioli_rumble_deliver_recipe = false;
	global.quest_ravioli_rumble_fail = false;
	#endregion
	#region ABSENCE OF SCENTS
	global.quest_scents_get_nose = false;
	global.quest_scents_deliver_nose = false;
	global.quest_scents_fail = false;
	#endregion
	#region GETTING FIT
	global.quest_getting_fit = false;
	#endregion
	#region SKULL DELIVERY
	global.quest_skull_delivery = false;
	#endregion
	#region HOTDOG HUNT
	global.quest_hotdog_hunt_get_dogs = false;
	global.quest_hotdog_hunt_deliver_dogs = false;
	#endregion
	#region MOW PROBLEM
	global.quest_mow_problem_get_mower = false;
	global.quest_mow_problem_deliver_mower = false;
	global.quest_mow_problem_fail = false;
	global.quest_mow_problem_mower_explode = false;
	#endregion
	#region DONT BREAK ANYTHING
	global.quest_dont_break_anything_fail = false;
	#endregion
#endregion