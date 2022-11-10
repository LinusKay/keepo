function npcHeartResponse(_entity){
	if point_distance(PLAYER_OBJ.x + sprite_get_width(PLAYER_OBJ.sprite_index)/2, PLAYER_OBJ.y + sprite_get_height(PLAYER_OBJ.sprite_index)/2, _entity.x, _entity.y - sprite_get_height(_entity.sprite_index)/2) < 25 + sprite_get_height(_entity.sprite_index)/2 
	{
		if global.relationships[? _entity.charName] != undefined
		{
			var relationshipLevel = global.relationships[? _entity.charName];
		
			if relationshipLevel <= global.relationshipLevelDislike
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDislike);
			}
			if relationshipLevel > global.relationshipLevelDislike && relationshipLevel <= global.relationshipLevelNeutral
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDefault);
			}
			else if relationshipLevel > global.relationshipLevelNeutral && relationshipLevel <= global.relationshipLevelFriend
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseFriend);
			}
			else if relationshipLevel > global.relationshipLevelFriend
			{
				instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseLove);
			}
		}
		else if _entity.entityNPC
		{
			instance_create_layer(_entity.x, _entity.y - sprite_get_height(_entity.sprite_index) - 1, "effects", _entity.heartResponseDefault);
		}
	}
}