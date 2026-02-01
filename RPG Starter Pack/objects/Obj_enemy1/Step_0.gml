

// if the alarm is greater than zero, then it has not been set off
if (alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
}

// what numbers it can go between
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);
// moving the enemy, and in this case the tilemap is the collision tilemap, so stopping when it collodes with the col layer. (and enemies)
move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, Obj_enemy_parent]);

if get_count == true
{
    enemy_number = instance_number(Obj_enemy1);
    get_count = false
}
enemy_left = instance_number(Obj_enemy1);
if enemy_number > enemy_left and can_check == true{
    alarm[3] = 180;
    can_check = false
}
