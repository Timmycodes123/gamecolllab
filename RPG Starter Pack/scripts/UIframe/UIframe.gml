function UIBox(_x, _y, _w, _h) constructor {
    x = _x;
    y = _y;
    w = _w;
    h = _h;

    visible = true;
    children = [];

    bg_sprite = noone;
    border_sprite = noone;

    draw_ui = function() {
        if (!visible) return;

        if (bg_sprite != noone)
            draw_sprite_stretched(bg_sprite, 0, x, y, w, h);

        if (border_sprite != noone)
            draw_sprite_stretched(border_sprite, 0, x, y, w, h);

        var len = array_length(children);
        for (var i = 0; i < len; i++) {
            children[i].draw_ui();
        }
    };

    add_child = function(child) {
        array_push(children, child);
        return child;
    };
}
