/// @description Win 
// You can write your code in this editor

audio_play_sound(levelUpSound, 1, false);

if (roundCount >= 4) {
    locked = true;
    instance_create_layer(room_width / 2, room_height / 2, "Instances", objYouWin);
} else {
    gameSize += 2;
    timer += 20;
    roundCount++;
    updateRounds();
    locked = false;
    resetGame();
}






