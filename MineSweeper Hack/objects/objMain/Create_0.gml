/// @description Main
// You can write your code in this editor

window_set_fullscreen(true);



for(var j = 0; j < gameSize; j++) {
	for(var i = 0; i < gameSize; i++) {
		instance_create_layer(733 + (128 * i) + 1, 543 + (128 * j) + 1, "Instances", objClickableTile);
		
	}	
}





