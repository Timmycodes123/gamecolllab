// if alarm zero is greater than zero the player has been recently attacked
if (alarm[0] < 0)
{
    // other is the enemy in this case
    hp -= other.damage;
    // sets a one second no damage period 
    alarm[0] = 40;
    image_blend = c_red
    
    if (hp <= 0)
    {
        // function that resets everything
        room_restart();
        hp = hp_total;
        x = 544
        y = 672
    }
}