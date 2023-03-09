if jumping {
	if z = 0 yJump = y // store initial y
	if z < jumpHeight z+= jumpSpeed // if less than jump height, increase z level
	if z >= jumpHeight jumping = false // if reached peak jump height, stop jump
	y = yJump - z // set y to jump level
}	
else if z > 0 {
	z-=jumpSpeed // if no longer jumping up, decrease height
	y = yJump - z // set y to jump level
}
//if z == 0 jumping = true



if charName != 0 && ds_map_exists(global.characterOptions, charName) && entityNPC && frameCount > 0
{
	var _sprite = global.characterOptions[? charName][? "sprite"]
	if _sprite != sprite_index global.characterOptions[? charName][? "sprite"] = sprite_index;
}
if accepting_gift
{
	
	if mail_accept dialogueResponses(mail_response); mail_accept = false; 
	if mail_deny dialogueResponses(response_mail_deny); mail_deny = false;
	
	if accept_gift_love 
	{ 
		dialogueResponses(response_gift_love); 
		global.relationships[? charName] += 3;
		accept_gift_love = false; 
	}
	else if accept_gift_like 
	{ 
		dialogueResponses(response_gift_like); 
		global.relationships[? charName] ++;
		accept_gift_like = false; 
	}
	else if accept_gift_dislike 
	{ 
		dialogueResponses(response_gift_dislike); 
		global.relationships[? charName] --;
		accept_gift_dislike = false; 
	}
	else if accept_gift_hate 
	{ 
		dialogueResponses(response_gift_hate); 
		global.relationships[? charName] -= 3;
		accept_gift_hate = false; 
	}
	accepting_gift = false;
}



frameCount++