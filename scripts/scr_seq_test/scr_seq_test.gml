function scr_seq_test(){
	var _seq = seq_test
	var _layer = "Instances"
	var _act_keepo_inst = instance_find(obj_keepo, 0)
	var _act_sleeves_inst = instance_find(obj_sleeves, 0)

	var _seqElement = layer_sequence_create(_layer, _act_keepo_inst.x, _act_keepo_inst.y, _seq)

	var _seqInst = layer_sequence_get_instance(_seqElement)

	sequence_instance_override_object(_seqInst, obj_keepo, _act_keepo_inst)
	sequence_instance_override_object(_seqInst, obj_sleeves, _act_sleeves_inst)
}