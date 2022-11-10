target_x = 0;
target_y = 0;
target_rm = 0;
transitions = [spr_warp_circle, spr_warp_square, spr_warp_star]
transition = transitions[irandom_range(0, array_length(transitions) - 1)];