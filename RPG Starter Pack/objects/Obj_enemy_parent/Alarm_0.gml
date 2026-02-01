// checking if player exists, and if they do setting a x and y to move to
if(instance_exists(Object_player) && distance_to_object(Object_player) < distance_to_player)
{
    target_x = Object_player.x;
    target_y = Object_player.y;
}
else
{
    target_x = random_range(xstart - 100, xstart + 100);
    target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;