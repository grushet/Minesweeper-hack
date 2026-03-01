/// @description Insert description here
// You can write your code in this editor

if (!locked) {
    timerTick++;
    if (timerTick >= room_speed) {
        timerTick = 0;
        timer--;
		if (timer <= 0 && timerTick <= 0) {
            locked = true;
            roundCount = 1;
            updateRounds();
            alarm[0] = room_speed;
        }
    }
}
	









