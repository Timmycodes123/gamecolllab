image_blend = c_white;
if (hp <= 0)
{
    instance_destroy();    
    
    Object_player.add_xp(xp_value);
    if global.Hobin_quest_accepted
    { 
        global.enemy_wolf_kills += 1;
        wolf_kill_starter = global.enemy_wolf_kills
        if global.enemy_wolf_kills >= 10 and global.Hobin_quest_accepted
        {
           global.Hobin_quest_complete = true    
        }
    }
}    