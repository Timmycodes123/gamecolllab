draw_self();

if (!instance_exists(Obj_dialogue) and distance_to_object(Object_player) < 8)
{
    draw_sprite(Quest_mark, 0, x + 6, y - 13);
}