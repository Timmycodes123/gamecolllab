if (room != newRoom) {
    fadeLevel += 0.015;
    if (fadeLevel >= 1){
        room_goto(newRoom);
        Object_player.x = newX;
        Object_player.y = newY
    }
}
else {
    fadeLevel -= 0.015;
}
// if the animation is done
if (fadeLevel <= 0){
    instance_destroy();
}