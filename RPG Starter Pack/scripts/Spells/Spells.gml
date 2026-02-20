function slot_check(){
    can_shoot_fire = false;
    can_shoot_laser = false
    can_hit = false;
    if selected_slot == 0{
        if slot[1] == Fireball_icon{
            can_shoot_fire = true
        }
    }
    if selected_slot == 1{
        if slot[2] == Fireball_icon{
            can_shoot_fire = true
        }
    }
    if selected_slot == 2{
        if slot[3] == Fireball_icon{
            can_shoot_fire = true
        }
    }
    if selected_slot == 3{
        if slot[4] == Fireball_icon{
            can_shoot_fire = true
        }
    }
    if can_shoot_fire{
        if can_shoot = true {
        var _fireball = instance_create_depth(x, y, depth, obj_fireball);   
        _fireball.image_angle = facing;
        can_shoot = false;
        alarm[1] = 30;
        }    
    }
}

