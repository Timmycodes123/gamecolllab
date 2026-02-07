var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// root frame
global.ui_root = new UIBox(0, 0, gui_w, gui_h);

// bar area
var bar_h = 64;
var bar = new UIBox(0, gui_h - bar_h, gui_w, bar_h);

bar.bg_sprite = spr_box;
bar.border_sprite = spr_lava;

global.ui_root.add_child(bar);

// button layout
var size = 64;
var spacing = 4;
var count = 5;

var total = count * size + (count - 1) * spacing;
var start_x = (gui_w - total) * 0.5;

// center vertically inside bar
var btn_y = gui_h - bar_h + (bar_h - size) * 0.5;

for (var i = 0; i < count; i++) {
    var btn = new UI_Button(start_x + (i * (size + spacing)), btn_y, size);
    bar.add_child(btn);
}


