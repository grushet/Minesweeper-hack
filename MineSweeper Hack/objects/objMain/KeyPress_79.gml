/// @description Cheat Skip
// You can write your code in this editor
show_debug_message("roundCount = " + string(roundCount));
if(roundCount >= 4) {
	 instance_create_layer(room_width / 2, room_height / 2, "Instances", objYouWin);
}
if(not instance_exists(objYouWin)) {
	roundCount++;
	gameSize += 2;
	timer += 10;
	updateRounds();
	resetGame();
}












