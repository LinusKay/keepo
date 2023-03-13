if jumping {
	if z = 0 y_jump = y // store initial y
	if z < jump_height z+= jump_speed // if less than jump height, increase z level
	if z >= jump_height jumping = false // if reached peak jump height, stop jump
	y = y_jump - z // set y to jump level
}	
else if z > 0 {
	z-=jump_speed // if no longer jumping up, decrease height
	y = y_jump - z // set y to jump level
}
//if z == 0 jumping = true



if char_name != 0 && ds_map_exists(global.character_options, char_name) && entity_npc && frame_count > 0
{
	var _sprite = global.character_options[? char_name][? "sprite"]
	if _sprite != sprite_index global.character_options[? char_name][? "sprite"] = sprite_index;
}
if accepting_gift
{
	
	if mail_accept dialogue_responses(mail_response); mail_accept = false; 
	if mail_deny dialogue_responses(response_mail_deny); mail_deny = false;
	
	if accept_gift_love 
	{ 
		dialogue_responses(response_gift_love); 
		global.relationships[? char_name] += 3;
		accept_gift_love = false; 
	}
	else if accept_gift_like 
	{ 
		dialogue_responses(response_gift_like); 
		global.relationships[? char_name] ++;
		accept_gift_like = false; 
	}
	else if accept_gift_dislike 
	{ 
		dialogue_responses(response_gift_dislike); 
		global.relationships[? char_name] --;
		accept_gift_dislike = false; 
	}
	else if accept_gift_hate 
	{ 
		dialogue_responses(response_gift_hate); 
		global.relationships[? char_name] -= 3;
		accept_gift_hate = false; 
	}
	accepting_gift = false;
}



frame_count++