// followers = [[instance, object id], [instance, object id], [instance, object id]]
function follower_add(parent, npc) {
	npc1 = instance_find(npc, 0);

	// find which slot target npc is in
	target_slot = undefined;
	for (i = 0; i < array_length(parent.followers); i++){
		if parent.followers[i] != noone {
			if parent.followers[i][0] == npc1 {
				target_slot = i;
			}
		}
	}
	
	// if target npc not currently following
	if target_slot == undefined {
		for (i = 0; i < array_length(parent.followers); i++){
			if parent.followers[i] == noone {
				parent.followers[i] = []
				parent.followers[i][0] = npc1;
				parent.followers[i][1] = npc1.object_index;
				npc1.following = true;
				npc1.follow_slot = i + 1;
				npc1.persistent = true
				break;
			}
		}
	}
	// if target npc currently following
	else {
		follower_remove(parent, npc)
	}
}

function follower_remove(parent, npc) {
	npc1 = instance_find(npc, 0);
	// find which slot target npc is in
	target_slot = undefined;
	for (i = 0; i < array_length(parent.followers); i++){
		if parent.followers[i] != noone {
			if parent.followers[i][0] == npc1 {
				target_slot = i;
			}
		}
	}
	// shift each slot after removed follower left one
	if target_slot != undefined {
		parent.followers[target_slot] = noone;
		for (i = target_slot; i < array_length(parent.followers) - 1; i++) {
			parent.followers[i] = parent.followers[i + 1];	
			if parent.followers[i] != noone {
				parent.followers[i][0].follow_slot = i + 1;
			}
		}
		parent.followers[array_length(parent.followers) - 1] = noone;
		npc1.following = false;
		npc1.follow_slot = 0;	
		npc1.persistent = false
	}
}