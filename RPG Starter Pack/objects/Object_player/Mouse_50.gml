if can_shoot = true {
    var _fireball = instance_create_depth(x, y, depth, obj_fireball);   
    _fireball.image_angle = facing;
    can_shoot = false;
    alarm[1] = 30;
}    
    