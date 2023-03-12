x1 = RESOLUTION_W/10;
x2 = RESOLUTION_W - RESOLUTION_W/10 ;
y1 = RESOLUTION_H/1.4;
y2 = RESOLUTION_H - 50;

textProgress = 0;

responseSelected = 0;

portraitSize = y1/2;
portraitOffset = 2;

line_break_pos[0] = 0;	
line_break_num = 0;
line_break_offset = 0;

char[0] = "";
setup = false;

last_free_space = 0;

frameCount = 0;
frameIndex = 0;

shakeInterval = 10;
shakeLeft = true;
shakeRight = false;

response_height = 150
response_y_buffer = 200
response_y_buffer_gap = 20
response_selected_x_offset = 0
response_text_x_offset = 250
response_text_y_offset = 40