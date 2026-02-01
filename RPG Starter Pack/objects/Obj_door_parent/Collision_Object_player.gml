
layer = layer_get_id("")
//if keyboard_check_pressed(ord("E"))
//{
//    other.x = xPosition;
//    other.y = yPosition;    
//    room_goto(roomName);
//}
if (keyboard_check_pressed(ord("E")))
{
    layer_destroy_instances("Instances_1");
    warp = instance_create_depth(x, y, depth, Fade_controller);
    warp.newX = xPosition;
    warp.newY = yPosition;
    warp.newRoom = roomName;
    instance_destroy();
}    