// at start of room, if npcs following
// check if npc exist in room, move, set following
// if not exist in room, create, set following

if followers[0] != noone {
	for(var i = 0; i < array_length(followers); i++){
		if(followers[i] != noone){
			var follower_obj = followers[i][1]
			if instance_find(follower_obj, 0) == noone {
				var new_follower_inst = instance_create_layer(x, y, "Instances", follower_obj)
				new_follower_inst.following = true
				followers[i][0] = new_follower_inst
			}
			else {
				var new_follower_inst = instance_find(follower_obj, 0)
				followers[i][0] = new_follower_inst
				new_follower_inst.following = true
			}
		}
	}
}
frame_count = -50;
