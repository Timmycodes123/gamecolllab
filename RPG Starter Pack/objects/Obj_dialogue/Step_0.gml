// if the dialogue has not started
if (current_message < 0) exit;
    
var _str = messages[current_message].msg;
// checking if the dialogue text is done
// getting the message, checking if it has not been fully drawn, increasing characters drawn, and cutting charaacters from the string
if (current_char < string_length(_str))
{
    // making it go faster while input_key is pressed
    current_char += char_speed * (1 + keyboard_check(input_key));
    // getting the message, checking if it has not been fully drawn, increasing characters drawn, and cutting charaacters from the string
    draw_message = string_copy(_str, 0, current_char);
}
// going to the next message
else if (keyboard_check_pressed(input_key))
{
    current_message++;
    if (current_message >= array_length(messages))
    {    
        instance_destroy();     
    }
    else 
    {
        current_char = 0;
    }
}