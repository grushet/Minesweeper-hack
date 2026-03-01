/// @description Right Pressed
// You can write your code in this editor

if (objMain.locked) exit;

if (flagged) {
	audio_play_sound(placeFlagSound, 1, false);
    flagged = false;
    with (objFlag) {
        if (gridX == other.gridX && gridY == other.gridY) {
            instance_destroy();
            break;
        }
    }
} else {
	audio_play_sound(placeFlagSound, 1, false);
    flagged = true;
    var flag = instance_create_layer(x, y, "Instances", objFlag);
    flag.gridX = gridX;
    flag.gridY = gridY;
}







