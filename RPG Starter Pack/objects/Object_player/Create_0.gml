move_speed = 1;

tilemap_col1 = layer_tilemap_get_id("Collisions");

//starting stats
hp = 10;
hp_total = hp;
damage = 1;

facing = 0;
can_shoot = true;

level = 1;
xp = 0;
xp_require = 100;
sprint = false
function add_xp(_xp_to_add)
{
    xp += _xp_to_add;
    if (xp >= xp_require)
    {
        level++;
        xp -= xp_require;
        xp_require *= 2;
        hp_total += 3;
        hp = hp_total;
        damage += 1    
    }    
}
audio_play_sound(Cool_theme, 0, true);
collision_items = [tilemap_col1, Obj_door, Obj_roof, Obj_wall, Obj_roof_tile, Side_wall, Obj_House_dark_wall, Obj_table, Obj_opposite_door, Obj_fence, FenceHalf, Obj_house_down, Obj_house, Obj_house_open, Obj_floor_liner, Building_parent, Obj_Wall_extension]
