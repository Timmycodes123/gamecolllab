function slot_check(){
    can_shoot_fire = false;
    can_shoot_laser = false
    can_hit = false;
    for (var i = 0; i < slot_count; i++){
        if slot[i] == Fireball_icon{
            var _fireball = instance_create_depth(x, y, depth, obj_fireball);   
            _fireball.image_angle = facing;
            can_shoot = false;
            alarm[1] = 60;
        }
    }

    
}

