/// @description Win 
// You can write your code in this editor

audio_play_sound(levelUpSound, 1, false);
gameSize += 2;
timer += 10;
roundCount++;
updateRounds();
objMain.locked = true;
resetGame();








