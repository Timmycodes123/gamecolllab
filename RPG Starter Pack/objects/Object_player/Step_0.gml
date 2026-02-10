selected_slot = 0;

if (keyboard_check_pressed(vk_shift)){
    move_speed = 2;
}
if (keyboard_check_released(vk_shift)){
    move_speed = 1;
}

// movement
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var collision_layers = [tilemap_col1]
move_and_collide(_hor * move_speed, _ver * move_speed, collision_items, undefined, undefined, undefined, move_speed, move_speed);


if !place_empty(Object_player.x,Object_player.y, Obj_house_floor){
    House_fade_parent.image_alpha = 0.2;
    collision_items = [tilemap_col1, Obj_door, Obj_roof, Obj_wall, Obj_roof_tile, Side_wall, Obj_House_dark_wall, Obj_table, Obj_opposite_door, Obj_fence, FenceHalf, Obj_house_down, Obj_house, Obj_floor_liner, Building_parent]
}
else{
    House_fade_parent.image_alpha = 1;
    collision_items = [tilemap_col1, Obj_door, Obj_roof, Obj_wall, Obj_roof_tile, Side_wall, Obj_House_dark_wall, Obj_table, Obj_opposite_door, Obj_fence, FenceHalf, Obj_house_down, Obj_house, Obj_house_open, Obj_floor_liner,Building_parent,Obj_Wall_extension]
}
// walking animations
if (_hor != 0 or _ver != 0)
{
    if (_ver > 0) sprite_index = spr_player_walk_down;
    else if (_ver < 0) sprite_index = spr_player_walk_up;
    else if (_hor > 0) sprite_index = spr_player_walk_right;
    else if (_hor < 0) sprite_index = spr_player_walk_left;     
    // finding the player's previous direction
    facing = point_direction(0, 0, _hor, _ver);     
}
// idle animations
else
{
    if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right; 
    else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;    
    else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;        
}

// checks if key has been pressed
if(keyboard_check_pressed(vk_space))
// Creating the image for sword
{
    var _inst = instance_create_depth(x, y, depth, obj_attack);
    // Basing sword direction off of recent input
    _inst.image_angle = facing;
    _inst.damage *= damage;
}    
for (var i = 0; i < slot_count; i++)
{
    if (keyboard_check_pressed(ord("1") + i))
    {
        selected_slot = i;
    }
}

if (keyboard_check_pressed(ord("0")))
{
    selected_slot = 9;
}




// Quest Checkers
