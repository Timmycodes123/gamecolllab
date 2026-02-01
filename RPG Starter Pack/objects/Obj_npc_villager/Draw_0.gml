draw_self();

if (!instance_exists(Obj_dialogue) and distance_to_object(Object_player) < 8)
{
    // something wrong with drawing 
    draw_sprite(spr_talk, 0, x + 16, y);
}