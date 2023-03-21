if event_data[? "event_type"] == "sequence event" 
{
    switch (event_data[? "message"])
    {
        case "seq_test_sleeves_hey":
			//var _seq = event_data[? "element_id"]
            dialogue_responses("no_access")
			break
		case "seq_test_sleeves_follow":
			follower_add(PLAYER_OBJ, obj_sleeves)
			break
        break;
    }
} 