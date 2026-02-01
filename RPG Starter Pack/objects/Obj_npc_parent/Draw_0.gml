draw_self();

if (instance_exists(Object_player) && distance_to_object(Object_player) < 8)
{
    draw_sprite(Quest_mark, 0, x, y - 16);
}