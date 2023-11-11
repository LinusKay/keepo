function scr_seq_test(){
	var _seq = seq_test
	var _layer = "Instances"
	var _act_keepo_inst = instance_find(PLAYER_OBJ, 0)
	var _act_sleeves_inst = instance_find(obj_sleeves, 0)

	var _seq_element = layer_sequence_create(_layer, _act_keepo_inst.x, _act_keepo_inst.y, _seq)

	var _seq_inst = layer_sequence_get_instance(_seq_element)

	sequence_instance_override_object(_seq_inst, PLAYER_OBJ, _act_keepo_inst)
	sequence_instance_override_object(_seq_inst, obj_sleeves, _act_sleeves_inst)
}