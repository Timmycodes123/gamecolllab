//enemy picks a x and y every sixty frames (one second) this is only part of that code
target_x = x;
target_y = y;

alarm[0] = 60;

// enemy checks for collosions
tilemap = layer_tilemap_get_id("Tiles_Col");

// knockback
kb_x = 0;
kb_y = 0;
// respawn list is made here
can_check = true
