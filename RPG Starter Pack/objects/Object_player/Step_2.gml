// fixing enemy overlap (when depth is greater you are drawn below, when it is lower you are drawn above)
with(Obj_enemy_parent)
{
    depth = -bbox_bottom;
}