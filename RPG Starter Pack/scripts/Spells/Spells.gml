function UI_Button(_x, _y, _size) constructor {
    UIBox(_x, _y, _size, _size);

    icon = noone;

    draw = function() {
        if (!visible) return;

        if (bg_sprite != noone)
            draw_sprite_stretched(bg_sprite, 0, x, y, w, h);

        if (icon != noone)
            draw_sprite_stretched(icon, 0, x, y, w, h);

        if (border_sprite != noone)
            draw_sprite_stretched(border_sprite, 0, x, y, w, h);

        // Children
        var len = array_length(children);
        for (var i = 0; i < len; i++) {
            children[i].draw();
        }
    };
}

