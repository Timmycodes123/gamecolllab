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
slot_count = 10;
slot_gap = 6;  
selected_slot = -1;
first_draw = false
// slot spells
slot[0] = -1
slot[1] = Fireball_icon
slot[2] = -1
slot[3] = -1
slot[4] = -1
slot[5] = -1
slot[6] = -1
slot[7] = Fireball_icon
slot[8] = -1
slot[9] = -1


