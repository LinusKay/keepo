function scr_seq_test(){
	var _seq = seq_test
	var _layer = "Instances"
	var _actKeepoInst = instance_find(obj_keepo, 0)
	var _actSleevesInst = instance_find(obj_sleeves, 0)

	var _seqElement = layer_sequence_create(_layer, _actKeepoInst.x, _actKeepoInst.y, _seq)

	var _seqInst = layer_sequence_get_instance(_seqElement)

	sequence_instance_override_object(_seqInst, obj_keepo, _actKeepoInst)
	sequence_instance_override_object(_seqInst, obj_sleeves, _actSleevesInst)
}