if (instance_exists(Obj_dialogue)) exit;
    
if (instance_exists(Object_player) && distance_to_object(Object_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        create_dialogue(dialogue);    
    }    
}
else
{
    can_talk = false;    
}    