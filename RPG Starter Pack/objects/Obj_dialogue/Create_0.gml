messages = [];
// -1 means it hasn't started yet
current_message = -1;
// how many characters from the string have been drawn
current_char = 0;
draw_message = "";
// speed that text is drawn 
char_speed = 0.5;
// speeds up that text segment
input_key = ord("E");
// box variables for text
gui_w = display_get_gui_width();
gui_h = display_get_gui_height();