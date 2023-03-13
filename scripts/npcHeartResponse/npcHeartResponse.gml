function npcHeartResponse(_entity){
	print("a")
	if point_distance(PLAYER_OBJ.x + sprite_get_width(PLAYER_OBJ.sprite_index)/2, PLAYER_OBJ.y + sprite_get_height(PLAYER_OBJ.sprite_index)/2, _entity.x, _entity.y - sprite_get_height(_entity.sprite_index)/2) < 25 + sprite_get_height(_entity.sprite_index)/2 
	{
		print("b")
		if global.relationships[? _entity.char_name] != undefined
		{
			var relationshipLevel = global.relationships[? _entity.char_name];
		
			if relationshipLevel <= global.relationship_level_dislike
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDislike);
			}
			if relationshipLevel > global.relationship_level_dislike && relationshipLevel <= global.relationship_level_neutral
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDefault);
			}
			else if relationshipLevel > global.relationship_level_neutral && relationshipLevel <= global.relationship_level_friend
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseFriend);
			}
			else if relationshipLevel > global.relationship_level_friend
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseLove);
			}
		}
		else if _entity.entity_npc
		{
			instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDefault);
		}
	}
}