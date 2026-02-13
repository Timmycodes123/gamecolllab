boxes = [];

var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;
var bw = display_get_width();
var bh = display_get_height();

by = display_get_gui_height() * .7;
// text properties
draw_set_font(Font1);
// halign is horizontal line
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// healthbar
var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, $"Hp: {hp}");

// Exp bar (_barw is bar width)
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 8;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, 0.6);

draw_text(_dx + _barw / 2, _dy + _barh / 2, $"Level {level}");

// Reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// GUI dimensions
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Bar dimensions
var bar_width = gui_w * 0.7;
var bar_x = (gui_w - bar_width) / 2;

// Slot size WITH gaps accounted for
var slot_size = (bar_width - (slot_gap * (slot_count - 1))) / slot_count;

// Slot row position
var bar_y = gui_h - slot_size - 24;

// Draw background bar
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect(bar_x - 8, bar_y - 8, bar_x + bar_width + 8, bar_y + slot_size + 8, false);
draw_set_alpha(1);

// Draw slots
var xx = bar_x;

for (var i = 0; i < slot_count; i++)
{
    // Highlight selected slot
    if (i == selected_slot)
    {
        draw_set_color(c_yellow);
        draw_rectangle(xx - 3, bar_y - 3, xx + slot_size + 3, bar_y + slot_size + 3, false);
    }

    // Slot box
    draw_set_color(c_white);
    //draw_rectangle(xx, bar_y, xx + slot_size, bar_y + slot_size, false);
    draw_sprite_ext(Fireball_icon, 0, xx, bar_y, 4.4, 4.4, 0, c_white, 1)
    xx += slot_size + slot_gap;
}
