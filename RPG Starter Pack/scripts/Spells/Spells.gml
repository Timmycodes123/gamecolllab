function fireball_cast(){
        return {
            name: "Fireball",
            icon: spr_fireball_icon,
            cooldown: 3,        // seconds
        cast: function() {
                var _fireball = instance_create_depth(x, y, depth, obj_fireball);   
            _fireball.image_angle = facing; 
            can_shoot = false;
            alarm[1] = 30;
            show_debug_message("Fireball cast!");
        }

}