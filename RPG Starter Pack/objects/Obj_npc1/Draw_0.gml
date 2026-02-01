draw_self();

if (can_talk && !instance_exists(Obj_dialogue))
{
    draw_sprite(spr_talk, 0, x, y - 16);
}