// This is a built in event that will run when Obj_enemy runs into obj_attack
if (alarm[1] < 0)
{
    // other is the sword, because it is not the main part of this function. This also subtracts damage from the total enemy hp    
    hp -= other.damage;
    // changes enemy color to red
    image_blend = c_red;
    // sign is -1, 0, or 1 for a general knockback direction
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    // alarms are basically timers
    alarm[1] = 20;
}