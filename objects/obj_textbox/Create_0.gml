x1 = RESOLUTION_W/10;
x2 = RESOLUTION_W - RESOLUTION_W/10 ;
y1 = RESOLUTION_H/1.4;
y2 = RESOLUTION_H - 50;

text_progress = 0;

response_selected = 0;

portrait_size = y1/2;
portrait_offset = 2;

line_break_pos[0] = 0;	
line_break_num = 0;
line_break_offset = 0;

char[0] = "";
setup = false;

last_free_space = 0;

frame_count = 0;
frame_index = 0;

shake_interval = 10;
shake_left = true;
shake_right = false;

response_height = 150
response_y_buffer = 200
response_y_buffer_gap = 20
response_selected_x_offset = 0
response_text_x_offset = 250
response_text_y_offset = 40