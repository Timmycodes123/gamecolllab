var _dx = 0;
// 70% of the way down vertically
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 16;
_dy += 16;

draw_set_font(Font1);
var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white)
// making message forty pixels below the name
_dy += 40;
// making the text stay inside the box and making wall borders for it to stay close to 
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2)