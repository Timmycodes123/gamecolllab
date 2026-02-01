
if (instance_exists(Obj_dialogue))
{
     
    // makes it so that the player can accept the quest while the dialogue is up
    if (keyboard_check_pressed(vk_numpad1) and global.Hobin_quest_accepted == false)
    {
        global.Hobin_quest_accepted = true;
        draw_sprite(Quest_mark, 0, x, y-3);
    }    
    exit;
}
// starting message    
if (instance_exists(Object_player) && distance_to_object(Object_player) < 8 and global.Hobin_quest_complete == false and Basic_message == false)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        create_dialogue(dialogue);
    }   

}
// completed quest message
if (instance_exists(Object_player) && distance_to_object(Object_player) < 8 and global.Hobin_quest_complete == true and Basic_message == false)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        create_dialogue(QuestCompleteDialogue);
        Object_player.add_xp(150);
        Basic_message = true
    }   
}    
// basic after quest messages
if (instance_exists(Object_player) && distance_to_object(Object_player) < 8 and Basic_message == true)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        create_dialogue(Basic_text);
    }           

}
