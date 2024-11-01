/// @param response
function dialogue_responses(){
	event_fire(event.conversation_start)
	switch(argument[0])
	{
		case 0: break

		// --------------------CHARACTER INTERACTIONS--------------------
		
	#region MAIN CHARACTERS
		#region SLEEVES
		case "sleeves_greet":
			dialogue_textbox("hey keepo!!!", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("hiii, how are you??", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("lets go!! ^-^", 0, dialogue_presets.sleeves_happy)
			dialogue_script(follower_add, [PLAYER_OBJ, instance_find(obj_sleeves, 0)])
			break
		case "sleeves_cold":
			dialogue_textbox("hey keepo...", 0, dialogue_presets.sleeves_default, -1)
			dialogue_emote_bubble(obj_sleeves, obj_emote_frown)
			dialogue_textbox("i'm kinda cold :(", 0, dialogue_presets.sleeves_sad, -1)
			dialogue_textbox("could u bring me some soup?", 0, dialogue_presets.sleeves_default, -1)
			dialogue_quest_start(1)
			dialogue_change_obj_script(obj_sleeves, dialogue_responses, ["sleeves_cold_2"])
			print(string(instance_number(obj_parent_queue)))
			break
		case "sleeves_cold_2":
			dialogue_textbox("have u found any soup?", 0, dialogue_presets.sleeves_sad, -1)
			break
		case "sleeves_soup_give":
			dialogue_textbox("soup!! u found some!!", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("thank uuuuuu keepo :))", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("*shluuuurpp*")
			dialogue_change_obj_script(obj_sleeves, dialogue_responses, ["sleeves_soup_talk"])
			break
		case "sleeves_soup_talk":
			camera_zoom_character(obj_sleeves)
			dialogue_textbox("they are warming their hands with the soup bowl")
			break
			
		case "sleeves_gift_hate": 
			dialogue_textbox("v-v", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("keepo...", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("please don't show me this ever again.", 0, dialogue_presets.sleeves_sad, -1)
			break
		case "sleeves_gift_dislike": 
			dialogue_textbox("oh! what's this?", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("oh.", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("uhh thanks i suppose, haha", 0, dialogue_presets.sleeves_default, -1)
			break
		case "sleeves_gift_like": 
			dialogue_textbox(":o", 0, dialogue_presets.sleeves_shock, -1)
			dialogue_textbox("this is so cool, keepo!", 0, dialogue_presets.sleeves_happy, -1)
			dialogue_textbox("thank u!!", 0, dialogue_presets.sleeves_happy, -1)
			break
		case "sleeves_gift_love": 
			dialogue_textbox("keepo!!!!!", 0, dialogue_presets.sleeves_shock, -1)
			dialogue_textbox("this is SO thoughtful of u!", 0, dialogue_presets.sleeves_happy, -1)
			dialogue_textbox("i LOVE this! THANK you!", 0, dialogue_presets.sleeves_happy, -1)
			dialogue_textbox("^-^", 0, dialogue_presets.sleeves_happy, -1)
			break	
			
		case "sleeves_mail_accept":
			dialogue_textbox("oh! a letter! for me??", 0, dialogue_presets.sleeves_shock, -1)
			dialogue_textbox("thanks keepo!!", 0, dialogue_presets.sleeves_happy, -1)
			break
		case "sleeves_mail_deny":
			dialogue_textbox("a letter? i wasn't expecting any mail! :o", 0, dialogue_presets.sleeves_shock, -1)
			dialogue_textbox("oH!", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox(":(", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("this letter isn't for me", 0, dialogue_presets.sleeves_sad, -1)
			break
		case "sleeves_letter_2":
			dialogue_textbox("wow its a letter from luco!", 0, dialogue_presets.sleeves_shock, -1)
			dialogue_textbox("...", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("i have no idea what this says", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("...", 0, dialogue_presets.sleeves_default, -1)
			dialogue_textbox("thanks keepo!", 0, dialogue_presets.sleeves_happy, -1)
			break
		#endregion
		
		#region LUCO
			
		case "luco_presets_demo":
			dialogue_textbox("...", 0, dialogue_presets.luco_blank)
			dialogue_textbox("HELLO LITTLE KEEPO", 0, dialogue_presets.luco_blank_shock)
			break
		
		case "luco_discover_1":
			dialogue_textbox("...")
			dialogue_emote_bubble(obj_pyramid_blank, obj_emote_exclaim)
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank_shock)
			dialogue_npc_jump(obj_pyramid_blank)
			dialogue_textbox("!!!")
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank_walk_shock)
			dialogue_move_obj(obj_pyramid_blank, rm_ext_town, 1296, 560)
			dialogue_change_obj_script(obj_pyramid_blank, dialogue_responses, ["luco_discover_2"])
			dialogue_path_start(obj_pyramid_blank, pth_luco_run_1, 2, path_action_stop, true)
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank)
			dialogue_fade_out(obj_pyramid_blank, 0.1)
			dialogue_despawn(obj_pyramid_blank)
			break
		case "luco_discover_2":
			dialogue_textbox("......")
			dialogue_emote_bubble(obj_pyramid_blank, obj_emote_exclaim)
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank_shock)
			dialogue_npc_jump(obj_pyramid_blank)
			dialogue_textbox("!!!!!!")
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank_walk_shock)
			dialogue_move_obj(obj_pyramid_blank, rm_ext_town, 1296, 560)
			dialogue_change_obj_script(obj_pyramid_blank, dialogue_responses, ["luco_discover_3"])
			var _path = path_create( 
				[
					[obj_pyramid_blank.x, obj_pyramid_blank.y],
					[obj_pyramid_blank.x + 200, obj_pyramid_blank.y]
				],
				false
			)
			dialogue_path_start(obj_pyramid_blank, _path, 2, path_action_stop, true)
			dialogue_change_sprite(obj_pyramid_blank, spr_luco_blank)
			dialogue_despawn(obj_pyramid_blank)
			break
		
		
		case "luco_ravioli_1": 
			dialogue_textbox("Hello!", 0, dialogue_presets.luco_default)
			dialogue_emote_bubble(obj_pyramid, obj_emote_heart)
			dialogue_textbox("I have lost my ravioli recipe!!!", 0, dialogue_presets.luco_shock)
			dialogue_textbox("I require my ravioli recipe!!!", 0, dialogue_presets.luco_shock)
			dialogue_quest_start(2)
			dialogue_change_obj_script(obj_pyramid, dialogue_responses, ["luco_ravioli_2"])
			//dialogue_move_obj(obj_pyramid, rm_forest, 239, 239)
			break
		case "luco_ravioli_2": 
			dialogue_textbox("I require my ravioli recipe!!!", 0, dialogue_presets.luco_shock, -1)
			break
		case "luco_ravioli_3":
			dialogue_textbox("MY RECIPE!!!", 0, dialogue_presets.luco_shock, -1)
			dialogue_textbox("THANK YOU KEEPO!", 0, dialogue_presets.luco_default, -1)
			dialogue_change_obj_script(obj_pyramid, dialogue_responses, ["luco_good_day"])
			break
		case "luco_good_day": dialogue_textbox("Have a good day, keepo.", 0, dialogue_presets.luco_default, -1) break
		case "luco_exclaim": dialogue_textbox("!!!", 0, dialogue_presets.luco_shock) break
		
		case "luco_gift_hate": dialogue_textbox("do not give me this ever again.", 0, dialogue_presets.luco_shock) break
		case "luco_gift_dislike": dialogue_textbox("eugh i dont like this.", 0, dialogue_presets.luco_default) break
		case "luco_gift_like": dialogue_textbox("a gift? thank you, i like it!", 0, dialogue_presets.luco_default) break
		case "luco_gift_love": dialogue_textbox("wow! i love it! thank you!", 0, dialogue_presets.luco_default) break
		#endregion
		
		#region BLUE
		case "blue_intro_1":
			dialogue_textbox("hey kip.", 0, dialogue_presets.blue_default)
			dialogue_textbox("i uh.. accidentally ordered too much stock", 0, dialogue_presets.blue_default)
			dialogue_textbox(". . . again", 0, dialogue_presets.blue_default)
			dialogue_textbox("so feel free to take what you like", 0, dialogue_presets.blue_default)
			dialogue_textbox("please . . .", 0, dialogue_presets.blue_default)
			break
		
		case "blue_hello":
			dialogue_textbox("hey kip!", 0, dialogue_presets.blue_default)
			break
			
		case "blue_gift_hate": 
			camera_zoom_character(obj_blue) 
			dialogue_textbox("uh", 0, dialogue_presets.blue_default)
			dialogue_textbox("no thank you...", 0, dialogue_presets.blue_default)
			dialogue_textbox("i really do not want this...", 0, dialogue_presets.blue_default)
			break
		case "blue_gift_dislike": 
			camera_zoom_character(obj_blue) 
			dialogue_textbox("oh", 0, dialogue_presets.blue_default)
			dialogue_textbox("uh...", 0, dialogue_presets.blue_default)
			dialogue_textbox("this isn't really.. my kind of thing", 0, dialogue_presets.blue_default)
			dialogue_textbox("but uh.. thank you", 0, dialogue_presets.blue_default)
			break
		case "blue_gift_like": 
			camera_zoom_character(obj_blue) 
			dialogue_textbox("a gift for me?", 0, dialogue_presets.blue_default)
			dialogue_textbox("this is pretty cool", 0, dialogue_presets.blue_default)
			dialogue_textbox("thanks, kip", 0, dialogue_presets.blue_default)
			break
		case "blue_gift_love": 
			camera_zoom_character(obj_blue) 
			dialogue_textbox("woah.", 0, dialogue_presets.blue_shock)
			dialogue_textbox("why are you giving me this?", 0, dialogue_presets.blue_shock)
			dialogue_textbox("are you sure??", 0, dialogue_presets.blue_shock)
			dialogue_textbox("i...", 0, dialogue_presets.blue_default)
			dialogue_textbox("i absolutely love it...", 0, dialogue_presets.blue_sad)
			dialogue_textbox("thank you, keepo.", 0, dialogue_presets.blue_sad)
			break	
		#endregion
		
		#region HAT MAN
		case "hat_man_1":
			dialogue_emote_bubble(obj_hat_man, obj_emote_frog)
			dialogue_textbox("hat hat hat hat", 0, dialogue_presets.hat_default)
			dialogue_textbox("hahahahahahahhahahahhaa", 0, dialogue_presets.hat_default)
			dialogue_textbox("hat :) hat hat", 0, dialogue_presets.hat_default, ["hat_man_1_what:what?", "hat_man_1_hat:hat"])
			break
		case "hat_man_1_what":
			dialogue_textbox("HAT HAT HAT HAT HAT HAT HAT HAT HAT HAT HAT HAT", 0, dialogue_presets.hat_sad, -1, 10)
			dialogue_change_obj_script(obj_hat_man, dialogue_responses, ["hat_man_sob"])
			break
		case "hat_man_1_hat":
			dialogue_textbox("hat :)", 0, dialogue_presets.hat_happy)
			dialogue_change_obj_script(obj_hat_man, dialogue_responses, ["hat_man_1_hat"])
			break
		case "hat_man_sob":
			dialogue_textbox("they are sobbing and shaking into the brim of their hat")
			break
			
		case "hat_man_gift_hate": 
			camera_zoom_character(obj_hat_man) 
			dialogue_textbox(">:(", 0, dialogue_presets.hat_sad)
			dialogue_textbox(">:( >:(", 0, dialogue_presets.hat_sad)
			break
		case "hat_man_gift_dislike": 
			camera_zoom_character(obj_hat_man) 
			dialogue_textbox(":/ h", 0, dialogue_presets.hat_sad)
			break
		case "hat_man_gift_like": 
			camera_zoom_character(obj_hat_man) 
			dialogue_textbox("h! hhh!!", 0, dialogue_presets.hat_happy)
			dialogue_textbox(":) hatty", 0, dialogue_presets.hat_happy)
			break
		case "hat_man_gift_love": 
			camera_zoom_character(obj_hat_man) 
			dialogue_textbox("HAT! HAHAHA", 0, dialogue_presets.hat_happy)
			dialogue_textbox(":,) hat", 0, dialogue_presets.hat_happy)
			dialogue_textbox(":_) hahrt", 0, dialogue_presets.hat_happy)
			dialogue_textbox(":______) hahahtt", 0, dialogue_presets.hat_sad)
			dialogue_textbox("*sobbing*", 0, dialogue_presets.hat_happy)
			break	
		
		#endregion
		
		#region VILLAIN
		case "villain_store":
			dialogue_textbox("little group of tiny idiots!!", 0, dialogue_presets.villain_default)
			dialogue_textbox("...is that us?", 0, dialogue_presets.moki_default)
			dialogue_textbox("yes!!", 0, dialogue_presets.villain_happy)
			dialogue_textbox("hello!!", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("would you know anyone who may be interested in some...", 0, dialogue_presets.villain_default)
			dialogue_textbox("FREE juice??", 0, dialogue_presets.villain_default)
			dialogue_textbox("free??? for us???", 0, dialogue_presets.sleeves_shock)
			dialogue_textbox("yesss, free!!", 0, dialogue_presets.villain_default)
			dialogue_textbox("would you like to sample my wa-", 0, dialogue_presets.villain_default)
			dialogue_textbox("its poison.", 0, dialogue_presets.moki_default)
			dialogue_textbox("wh- uh", 0, dialogue_presets.villain_shock)
			dialogue_textbox("poison. you're trying to poison us.", 0, dialogue_presets.moki_default)
			dialogue_textbox("i would never!", 0, dialogue_presets.villain_default)
			dialogue_textbox("did i mention it was free?", 0, dialogue_presets.villain_default)
			dialogue_textbox("would i poison you for free?", 0, dialogue_presets.villain_default)
			dialogue_textbox("hmmm no you would probably try to rob us too", 0, dialogue_presets.moki_default)
			dialogue_textbox("", 0, dialogue_presets.villain_default)
			dialogue_textbox("that makes sense", 0, dialogue_presets.moki_default)
			dialogue_textbox("exactly. now take the drink.", 0, dialogue_presets.villain_default)
			dialogue_textbox("im not drinking poison.", 0, dialogue_presets.moki_default)
			dialogue_textbox("ITS NOT POISON", 0, dialogue_presets.villain_default)
			dialogue_textbox("ok.", 0, dialogue_presets.moki_default)
			dialogue_textbox("drink it.", 0, dialogue_presets.moki_default)
			dialogue_textbox("i- what-", 0, dialogue_presets.villain_default)
			dialogue_textbox("drink the poison.", 0, dialogue_presets.moki_default)
			dialogue_textbox("...", 0, dialogue_presets.villain_default)
			dialogue_textbox("robot, drink the juice", 0, dialogue_presets.villain_default)
			dialogue_textbox("beep beep boop", 0, dialogue_presets.robot_default)
			// the robot drinks it, and after a second of silence, falls back with a loud clang
			dialogue_textbox("i told you", 0, dialogue_presets.moki_default)
			dialogue_textbox("HAYFEVER", 0, dialogue_presets.villain_default)
			dialogue_textbox("thats absolutely not how that works", 0, dialogue_presets.moki_default)
			dialogue_textbox("WE'RE CLOSED!!", 0, dialogue_presets.villain_default)
			// the shutters on the stall close
			// if you listen to the stall after close, you hear the robot get up, and immediately drink more, and immediately pass out again
			break
		case "villain_autograph":
			// an elderly woman approaches, dressed in elderly woman clothes, with a voice like a villain doing a bad impression of an elderly woman
			dialogue_textbox("oh, heroes! oh my!", 0, dialogue_presets.villain_default)
			dialogue_textbox("strong, powerful heroes!", 0, dialogue_presets.villain_default)
			dialogue_textbox("wow. they forgot to insult us.", 0, dialogue_presets.moki_default)
			dialogue_textbox("glorious ugly heroes!", 0, dialogue_presets.villain_default)
			dialogue_textbox("nevermind.", 0, dialogue_presets.moki_default)
			dialogue_textbox("hi there!!", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("my grandson is your biggest fan!", 0, dialogue_presets.villain_default)
			dialogue_npc_jump(obj_sleeves)
			dialogue_change_sprite(obj_sleeves, spr_sleeves_shock)
			dialogue_textbox("oh wow!! really??", 0, dialogue_presets.sleeves_happy)
			dialogue_textbox("i miss my grandson so dearly", 0, dialogue_presets.villain_default)
			dialogue_change_sprite(obj_sleeves, spr_sleeves)
			dialogue_textbox("oh that's so sad", 0, dialogue_presets.sleeves_sad)
			dialogue_textbox("YES, i am fraught with sadness", 0, dialogue_presets.villain_default)
			dialogue_textbox("so sad. and old.", 0, dialogue_presets.villain_default)
			dialogue_textbox("are you actually buying this?", 0, dialogue_presets.moki_default)
			dialogue_textbox("all i ask is an autograph to give to them", 0, dialogue_presets.villain_default)
			dialogue_textbox("im not signing that.", 0, dialogue_presets.moki_default)
			dialogue_textbox("we have to!!", 0, dialogue_presets.sleeves_sad)
			// you sign the autograph
			dialogue_textbox("HA HA HA HA HA", 0, dialogue_presets.villain_default)
			dialogue_textbox("YOU FOOLS", 0, dialogue_presets.villain_default)
			dialogue_textbox("ROBOT, BURN THE AUTOGRAPH!!!", 0, dialogue_presets.villain_default)
			// the robot emerges, also dressed like an old lady
			// the autographed paper bursts into flames
			dialogue_textbox("*gasp* no!", 0, dialogue_presets.sleeves_shock)
			dialogue_textbox("HA HA HA HA HA", 0, dialogue_presets.villain_default)
			dialogue_textbox("BEEP BEEP BEEP BEEP BEEP", 0, dialogue_presets.robot_default)
			dialogue_textbox("my most dastardly plan yet!!!", 0, dialogue_presets.robot_default)
			dialogue_textbox("psychological warfare at its most diabolical!!!", 0, dialogue_presets.robot_default)
			dialogue_textbox("what about your grandson???", 0, dialogue_presets.sleeves_sad)
			dialogue_textbox("I NEVER HAD A GRANDSON", 0, dialogue_presets.villain_default)
			dialogue_textbox("HA HA HA HA HA", 0, dialogue_presets.villain_default)
			dialogue_textbox("BEEP BEEP BEEP BEEP BEEP", 0, dialogue_presets.robot_default)
			dialogue_textbox("noooooooo", 0, dialogue_presets.sleeves_sad)
			break
		#endregion
	#endregion
	#region SIDE CHARACTERS
		#region ARTI

		#endregion
		
		#region BULL
		case "bull_stare":
			dialogue_textbox("They are staring off into the horizon")
			dialogue_change_obj_script(obj_bull, dialogue_responses, ["bull_stare_2"])
			break
		case "bull_stare_2":
			dialogue_textbox("Do you mind? I am staring off into the horizon.", 0, dialogue_presets.bull_default)
			dialogue_change_obj_script(obj_bull, dialogue_responses, ["bull_stare"])
			break
		#endregion
			
		#region STAR HEAD
		case "starhead_hotdogs":
			camera_zoom_character(obj_starhead)
			dialogue_textbox("Between you and me...", 0, dialogue_presets.star_default)
			dialogue_textbox("I don't even really like hotdogs...", 0, dialogue_presets.star_default)
			dialogue_textbox("But they're my friend's favourite thing", 0, dialogue_presets.star_default)
			dialogue_textbox("It's nice to spend time with them", 0, dialogue_presets.star_smile)
			dialogue_textbox("...", 0, dialogue_presets.star_smile)
			dialogue_textbox("Please dont tell them", 0, dialogue_presets.star_blush)
			break
		#endregion
		
		#region HOTDOG FRIEND
		case "hotdog_friend_munch":
			dialogue_textbox("HEY", 0, dialogue_presets.hotdog_default)
			dialogue_textbox("they are busy devouring several hotdogs at once")
			break
		case "hotdog_friend_truth":
			dialogue_textbox("Star Head and I eat hotdogs here every week :)", 0, dialogue_presets.hotdog_default)
			dialogue_textbox("We both LOOOOOOOooOoOOoOOOOoOoOoOoOOVe hotdogs", 0, dialogue_presets.hotdog_default)
			dialogue_textbox("aint that right bud?", 0, dialogue_presets.hotdog_default)
			dialogue_textbox("you betcha, bud", 0, dialogue_presets.star_smile)
			dialogue_change_obj_script(obj_hotdog_friend, dialogue_responses, ["hotdog_friend_munch"])
			break
		#endregion
		
		#region OLD MAN
		case "old_man_asleep":
			camera_zoom_character(obj_old_man_tall)
			dialogue_textbox("He's fast asleep.")
			break
		case "old_man_quest_begin":
			camera_zoom_character(obj_old_man_small)
			dialogue_textbox("Me and Giorgio used to love to smell these flowers together.", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("But my nose just isn't what it used to be...", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("I wish I could smell them again...", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("But that's bein old for ya!", 0, dialogue_presets.old_man_small_default)
			dialogue_quest_start(3)
			dialogue_change_obj_script(obj_old_man_small, dialogue_responses, ["old_man_quest_middle"])
			break
		case "old_man_quest_middle":
			camera_zoom_character(obj_old_man_small)
			dialogue_textbox("*Sniff sniff*", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("Still nuthin.", 0, dialogue_presets.old_man_small_default)
			break
		case "old_man_accept_nose":
			dialogue_textbox("Is this...", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("a NOSE?????", 0, dialogue_presets.old_man_small_shock)
			dialogue_textbox("I cannot believe it!", 0, dialogue_presets.old_man_small_shock)
			dialogue_textbox("Allow me to just...", 0, dialogue_presets.old_man_small_default)
			dialogue_textbox("*Sniff*", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("*SNIFF SNIFF*", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("This nose!", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("I've never sniffed so good in my life!", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("Thank you so, so much, little one.", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("Giorgio! Giorgio! Lookame!!", 0, dialogue_presets.old_man_small_nose)
			dialogue_change_obj_script(obj_old_man_small, dialogue_responses, ["old_man_sniff"])
			break
		case "old_man_sniff":
			dialogue_textbox("*sniff sniff*", 0, dialogue_presets.old_man_small_nose)
			dialogue_textbox("He is wholly engrossed in smelling the flowers.")
			break
		#endregion
	
		#region SKULL
		case "skull_intro":
			dialogue_textbox("*rattle* EY!", 0, dialogue_presets.skull_default)
			dialogue_textbox("EY YOU! BUDDY!", 0, dialogue_presets.skull_default)
			dialogue_textbox("*rattle rattle rattle*", 0, dialogue_presets.skull_default)
			dialogue_textbox("DOWN 'ERE. LOOK FELLA, SOMEONE JACKED MY BODY!", 0, dialogue_presets.skull_default)
			dialogue_textbox("*rattle* RIDICKULUS IM TELLIN YA!", 0, dialogue_presets.skull_default)
			dialogue_textbox("PICK ME UP AND HELP ME FIND IT WILL YA!!", 0, dialogue_presets.skull_default, ["skull_yes:sure", "skull_no:no way"])
			break
		case "skull_yes":
			dialogue_textbox("THATS WHAT IM TALKIN ABOUT BABY! LET'S GO BIG GUY!!", 0, dialogue_presets.skull_default)
			dialogue_move_obj(obj_skull, rm_null, 0, 0)
			dialogue_despawn(obj_skull)
			dialogue_item_add("lost skull", "A lost skull, trying to find their body", 0, spr_skull_item, false, [], [] ,[] ,[])
			dialogue_quest_start(quest.skull_delivery)
			break
		case "skull_no":
			dialogue_textbox("WHAT!!", 0, dialogue_presets.skull_default)
			dialogue_textbox("WHADDYA MEAN NO??", 0, dialogue_presets.skull_default)
			dialogue_textbox("LOOK GUY I DONT WANT YOUR HELP ANYWAY", 0, dialogue_presets.skull_default)
			dialogue_change_obj_script(obj_skull, dialogue_responses, ["skull_intro_no"])
			break
		case "skull_intro_no":
			dialogue_textbox("OH LOOKIE WHOS BACK IN TOWN", 0, dialogue_presets.skull_default)
			dialogue_textbox("YOU GONNA HELP ME FIND MY BODY OR NOT?", 0, dialogue_presets.skull_default, ["skull_yes:sure", "skull_no:no way"])
			break
		case "skull_delivered":
			dialogue_textbox("MY BODY!!", 0, dialogue_presets.skull_default)
			dialogue_textbox("YA FOUND IT!!", 0, dialogue_presets.skull_default)
			dialogue_textbox("PUT ME BACK ON!!!", 0, dialogue_presets.skull_default)
			dialogue_change_sprite(obj_skeleton, spr_skeleton_full)
			dialogue_item_remove("Lost Skull")
			dialogue_textbox("*RATTLE RATTLE*", 0, dialogue_presets.skull_default)
			dialogue_textbox("THANKS A LOT PAL!!!!!", 0, dialogue_presets.skull_default)
			dialogue_quest_advance(quest.skull_delivery)
			dialogue_change_obj_script(obj_skeleton, dialogue_responses, ["skeleton_rattle"])
			break
		case "skeleton_rattle":
			play_sfx(snd_rattle, irandom_range(0.8, 1.2))
			break
		case "skeleton_headless":
			dialogue_textbox("The skeleton seems to have lost its head")
			break
		#endregion
			
		#region HOT DOG STAND
		case "kevin_quest":
			dialogue_textbox("y o u . . .", 0, dialogue_presets.kevin_default, -1, true)
			dialogue_textbox("s m a l l .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("i  a m  o u t  o f  h o t d o g . . .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("r e t u r n  d o g s  t o  m e ,  s m a l l .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("h o t . . .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("h o t d o g  h o t . . .", 0, dialogue_presets.kevin_default)
			dialogue_quest_start(quest.hotdog_hunt)
			break
		case "kevin_quest_deliver":
			dialogue_textbox("i  s m e l l . . .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("i  s m e l l . . . H  O  T  D  O  G", 0, dialogue_presets.kevin_shock, -1, true)
			dialogue_textbox("h a n d  i t  o v e r ,  s m a l l", 0, dialogue_presets.kevin_default)
			dialogue_item_remove("hotdog box")
			dialogue_textbox("t h a n k  y o u ,  s m a l l", 0, dialogue_presets.kevin_default)
			dialogue_quest_finish(quest.hotdog_hunt)
			dialogue_change_obj_script(obj_hotdog_stand, dialogue_responses, ["kevin_intro"])
			break
		case "kevin_intro":
			dialogue_textbox("t h a n k i n g  t h e  s m a l l", 0, dialogue_presets.kevin_default)
			dialogue_textbox("m y  n a m e  i s \nC t h a e o d i l i l i k e i n o l a e o r u l  U n g i v b a r s t u n .", 0, dialogue_presets.kevin_default)
			dialogue_textbox("s m a l l ,  y o u  a r e  f r i e n d", 0, dialogue_presets.kevin_default)
			dialogue_textbox("c a l l  m e . . .", 0, dialogue_presets.kevin_default )
			dialogue_textbox("k e v i n .", 0, dialogue_presets.kevin_default )
			break
		#endregion
		
		#region TONY
		case "tony_intro":
			dialogue_textbox("G'day, champion", 0, dialogue_presets.tony_default)
			dialogue_textbox("How's it goin?", 0, dialogue_presets.tony_default)
			break
		case "tony_quest":
			dialogue_textbox("G'day, champion", 0, dialogue_presets.tony_default)
			dialogue_textbox("How's my luck", 0, dialogue_presets.tony_default)
			dialogue_textbox("Mower's carked it. No idea where I'm gonna get a new one.", 0, dialogue_presets.tony_default)
			dialogue_textbox("Let me know if you see one anywhere I guess...", 0, dialogue_presets.tony_default)
			dialogue_quest_start(quest.mow_problem)
			dialogue_change_obj_script(obj_tony, dialogue_responses, ["tony_intro"])
			break
		case "tony_give_lawnmower":
			dialogue_textbox("G'day, champion. What's thi-", 0, dialogue_presets.tony_default)
			dialogue_textbox("YOOOOUUU'RE JOKING", 0, dialogue_presets.tony_shock, -1, true)
			dialogue_textbox("YOU", 0, dialogue_presets.tony_default)
			dialogue_textbox("ARE", 0, dialogue_presets.tony_shock, -1, true)
			dialogue_textbox("JOKING", 0, dialogue_presets.tony_shock, -1, true, 25)
			dialogue_textbox("That's a Joe Schmoe 1500 Rapid-cut Turbo with .5 bearing struts and speed holes!!!", 0, dialogue_presets.tony_shock, -1)
			dialogue_spawn(150, 373, -9999, obj_explosion)
			dialogue_script(play_sfx, [snd_explosion])
			dialogue_despawn(obj_lawnmower_rusty)
			global.quest_mow_problem_mower_explode = true
			dialogue_textbox("Look at this baby MOW", 0, dialogue_presets.tony_mow)
			dialogue_textbox("It's enough to make an old man cry", 0, dialogue_presets.tony_default)
			dialogue_textbox("...", 0, dialogue_presets.tony_cry)
			dialogue_change_sprite(obj_tony, spr_tony)
			dialogue_change_obj_script(obj_tony, dialogue_responses, ["tony_intro"])
			break
		#endregion
		
		#region NORMAL DUDE
		case "normal_intro":
			dialogue_textbox(". . .", 0, dialogue_presets.normal_dude)
			break
		#endregion
		
		#region WIZARD
		// he's really old, so he uses a lot of ... incorrectly, like an old person texting
		case "wizard_intro":
			dialogue_textbox("HBWUHH BWWBWB BUHBUHBUH", 0, dialogue_presets.wizard_shock)
			dialogue_textbox("...", 0, dialogue_presets.wizard_default)
			dialogue_textbox("hello there, stranger...", 0, dialogue_presets.wizard_default)
			dialogue_textbox("i am the grand wizard", 0, dialogue_presets.wizard_default)
			dialogue_textbox("i am the grand wizard, [NAME]", 0, dialogue_presets.wizard_shock)
			dialogue_textbox("nice to meet you...", 0, dialogue_presets.wizard_default)
			dialogue_change_sprite(obj_wizard, spr_wizard_sleep)
			break
		case "skull_argue":
			dialogue_textbox("HEY WAIT A SECOND", 0, dialogue_presets.skull_default)
			dialogue_textbox("HEY BEARDY!", 0, dialogue_presets.skull_default)
			dialogue_textbox("HUH WHUH BWUUHW", 0, dialogue_presets.wizard_shock)
			dialogue_textbox("WHATS YOUR DEAL BUDDY", 0, dialogue_presets.skull_default)
			dialogue_textbox("THOSE ARE MY BONES", 0, dialogue_presets.skull_default)
			dialogue_textbox("HWUH WHO ARE YOU", 0, dialogue_presets.wizard_shock)
			dialogue_change_sprite(obj_wizard, spr_wizard_sleep)
			break
		#endregion
		
		#region MAN
		case "man_intro":
			dialogue_textbox("uh", 0, dialogue_presets.man_default)
			dialogue_textbox("uhh.... uh.h. ..", 0, dialogue_presets.man_default)
			dialogue_textbox("wh- who-", 0, dialogue_presets.man_default)
			dialogue_textbox("please leave my house...", 0, dialogue_presets.man_default)
			dialogue_change_obj_script(obj_man, dialogue_responses, ["man_intro_2"])
			break
		case "man_intro_2":
			dialogue_textbox("whuh", 0, dialogue_presets.man_default)
			dialogue_textbox("oh...", 0, dialogue_presets.man_default)
			dialogue_textbox("you're still here", 0, dialogue_presets.man_default)
			dialogue_textbox("p-please leave", 0, dialogue_presets.man_default)
			dialogue_change_obj_script(obj_man, dialogue_responses, ["man_intro_3"])
			break
		case "man_intro_3":
			dialogue_textbox("ohhh man ok ok..", 0, dialogue_presets.man_default)
			dialogue_textbox("h-hey", 0, dialogue_presets.man_default)
			dialogue_textbox("l-look you seem n-nice", 0, dialogue_presets.man_default)
			dialogue_textbox("i... i'd like-", 0, dialogue_presets.man_default)
			dialogue_emote_bubble(obj_man, obj_emote_frown)
			dialogue_textbox("can you please go?", 0, dialogue_presets.man_default)
			dialogue_change_obj_script(obj_man, dialogue_responses, ["man_intro_4"])
			break
		case "man_intro_4":
			dialogue_textbox("ha ha..", 0, dialogue_presets.man_default)
			dialogue_textbox("ho hooo...", 0, dialogue_presets.man_default)
			dialogue_textbox("...", 0, dialogue_presets.man_default)
			dialogue_textbox("ok just dont break anything...", 0, dialogue_presets.man_default)
			dialogue_quest_start(quest.dont_break_anything)
			dialogue_change_obj_script(obj_man, dialogue_responses, ["man_intro_5"])
			break
		case "man_intro_5":
			dialogue_textbox("...", 0, dialogue_presets.man_default)
			dialogue_textbox("h-hey", 0, dialogue_presets.man_default)
			dialogue_textbox("please dont break anything", 0, dialogue_presets.man_default)
			break
		case "man_intro_6":
			dialogue_emote_bubble(obj_man, obj_emote_frown)
			dialogue_textbox("...", 0, dialogue_presets.man_default)
			break
		#endregion
		
		#region NEGRI
		case "negri_miau":
			dialogue_emote_bubble(obj_negri, obj_emote_sleep)
			dialogue_textbox("miau.", 0, dialogue_presets.negri)
			break
		#endregion
		
		#region BOOTS
		case "boots_calm":
			dialogue_textbox(" 	♡( ◡‿◡ )", 0, dialogue_presets.boots_kaomoji)
			dialogue_change_obj_script(obj_boots, dialogue_responses, ["boots_smooch"])
			break
		case "boots_smooch":
			dialogue_textbox("(っ˘з(˘⌣˘ ) ♡", 0, dialogue_presets.boots_kaomoji)
			dialogue_change_obj_script(obj_boots, dialogue_responses, ["boots_cute"])
			break
		case "boots_cute":
			dialogue_textbox("♡(｡- ω -)", 0, dialogue_presets.boots_kaomoji)
			dialogue_change_obj_script(obj_boots, dialogue_responses, ["boots_smooch"])
			break
		#endregion
		
		#region TRENCHCOAT KIDS
		case "trenchkid_1":
			dialogue_textbox("I am just one adult man enjoying my long trenchcoat for men")
			break
		case "trenchkid_2":
			dialogue_textbox("Somebody is crying inside the jacket")
			break
		case "trenchkid_3":
			dialogue_textbox("I'll level with you, chief.")
			dialogue_textbox("My associate and i inside this here jacket are just two kids.")
			dialogue_textbox("But we got some serious business and a lot on our plate, see.")
			dialogue_textbox("So scram, before somebody is forced to start cryin' and pissin', capiche?")
			break
		case "trenchkid_4":
			dialogue_textbox("I love drive car kiss wife long nap read news")
			dialogue_textbox("Waiter, two of your warmest milk")
			break
		case "trenchkid_5":
			dialogue_textbox("Here, take my card")
			dialogue_textbox("Now scram")
			// they give you a card of lined paper with scribble on it
			break
			
		#endregion
		
		#region GRUNO
		case "glonk":
			dialogue_textbox("glonk")
			dialogue_fade_out(obj_gruno, 0.01)
			dialogue_move_obj(obj_gruno, rm_null, 0, 0)
			dialogue_despawn(obj_gruno)
			break
		#endregion
	#endregion
	#region OBJECTS
		case "drawer_1":
			dialogue_textbox("open the first draw?", 0, noone, ["drawer_1_open:sure", "blank:no way"])
			break
		case "drawer_1_open":
			dialogue_textbox("its full of ___")
			dialogue_change_obj_script(obj_drawers, dialogue_responses, ["drawer_2"])
			break
		case "drawer_2":
			dialogue_textbox("open the second draw?", 0, noone, ["drawer_2_open:sure", "blank:no way"])
			break
		case "drawer_2_open":
			dialogue_textbox("its full of ___")
			dialogue_change_obj_script(obj_drawers, dialogue_responses, ["drawer_3"])
			break
		case "drawer_3":
			dialogue_textbox("open the third draw?", 0, noone, ["drawer_3_open:sure", "blank:no way"])
			break
		case "drawer_3_open":
			dialogue_textbox("there is no third draw")
			dialogue_change_obj_script(obj_drawers, dialogue_responses, ["drawer_4"])
			break
		case "drawer_4":
			dialogue_textbox("...try to open the third draw anyway?", 0, noone, ["drawer_4_open:sure", "blank:no way"])
			break
		case "drawer_4_open":
			dialogue_textbox("you claw and grasp at the air")
			dialogue_textbox("to your surprise, nothing happens")
			dialogue_textbox("incredible")
			break
			
		case "sign_hat": dialogue_textbox("hat") break
		case "sign_hat_2": 
			dialogue_textbox("a grand abstract painting hangs on the wall") 
			dialogue_textbox("...")
			dialogue_textbox("it's of a hat")
			break
		case "computer_frog":
			dialogue_textbox("It's loaded up with images of frogs")
			break
		case "mail_open":
			dialogue_textbox("New mail! Check it out!")
			break
		case "mail_none":
			dialogue_textbox("No new mail")
			break
		case "mail_hotdog":
			dialogue_textbox("The mail_box is overflowing with hotdogs.")
			break
		case "vase_break":
			dialogue_textbox("its a lovely vase filled with flowers")
			dialogue_script(play_sfx, [snd_smash])
			dialogue_change_sprite(obj_vase, spr_vase_broken)
			global.quest_dont_break_anything_fail = true
			dialogue_textbox("MY VASE!!!!!!", 0, dialogue_presets.man_default)
			dialogue_textbox("NO NO NO NO NO N ONO", 0, dialogue_presets.man_default)
			dialogue_textbox("you did this to me", 0, dialogue_presets.vase_broken)
			dialogue_textbox("why did you do that...", 0, dialogue_presets.man_default)
			dialogue_textbox("antonio i am so sorry...", 0, dialogue_presets.vase_broken)
			dialogue_textbox("no.. please..", 0, dialogue_presets.man_default)
			dialogue_textbox("our love was...", 0, dialogue_presets.vase_broken)
			dialogue_textbox("never meant to be.", 0, dialogue_presets.vase_broken)
			dialogue_script(play_sfx, [snd_sweep])
			dialogue_fade_out(obj_vase, 0.01)
			dialogue_despawn(obj_vase)
			dialogue_textbox("...", 0, dialogue_presets.man_default)
			dialogue_emote_bubble(obj_man, obj_emote_frown)
			dialogue_textbox(":(", 0, dialogue_presets.man_default)
			dialogue_change_obj_script(obj_man, dialogue_responses, ["man_intro_6"])
			break
	#endregion
		
	#region ??? CHARACTERS
		// sketching out a villain
		// a bit of a fool, really wants to be a villain
		// not very good at it, they try different styles, misuse phrases
		// theyre a bit overconfident in it
		// slowly, they become legitimately twisted and evil
		// overcome, they turn into a real threat
		// think metaton/lancer but they go full wacko
		case "bbeg_phrase_1":
			dialogue_textbox("YOU MADE YOUR CAKE")
			dialogue_textbox("IT IS TIME FOR YOU TO LIE IN IT")
			dialogue_textbox("HA HA HA HA HA HA HA HA HA")
			break
		case "bbeg_phrase_2":
			dialogue_textbox("YOU CANNOT HAVE YOUR BED AND EAT IT TOO")
			dialogue_textbox("HA HA HA HA HA HA HA HA HA")
			break
		case "bbeg_diabolical":
			dialogue_textbox("it is time to show you my TRUE diabolicalitiness")
			dialogue_textbox("HA HA HA HA HA HA HA HA HA")
			break
		case "bbeg_evil":
			dialogue_textbox("that's where you're wrong. . .")
			dialogue_textbox("I've never felt. . .")
			dialogue_textbox("I've never felt. . . more . . .")
			dialogue_textbox("d i a b o l i c a l")
			break
	#endregion
		
	case "blank": break
	case "no_access":
		dialogue_textbox(". . .")
		dialogue_textbox("it doesn't look like you can go any further")
		break
		
	case "monument_teleport_locked":
		dialogue_textbox(". . .")
		dialogue_textbox("nothing happens")
		break	
		
	
		
	default: break
	}
	
	
}