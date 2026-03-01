/// @description Creation of the lucky block
// You can write your code in this editor


var rx, ry;
var attempts = 0;
do {
    rx = irandom(objMain.gameSize - 1);
    ry = irandom(objMain.gameSize - 1);
    attempts++;
} until (objMain.grid[rx][ry] == 0 || attempts > 100);

if (attempts <= 100) {
	var remaining = instance_number(objClickableTile) - 1;
	var bombCount = 0;
	for (var j = 0; j < objMain.gameSize; j++) {
	    for (var i = 0; i < objMain.gameSize; i++) {
	        if (objMain.grid[i][j] == 1) bombCount++;
	    }
	}

if (remaining == bombCount) {
	objMain.locked = true;
    objMain.alarm[1] = room_speed * 2;//WIN
}
    with (objClickableTile) {
        if (gridX == rx && gridY == ry) {
            objMain.grid[gridX][gridY] = -1;
            instance_destroy();
            break;
        }
    }
	
}








