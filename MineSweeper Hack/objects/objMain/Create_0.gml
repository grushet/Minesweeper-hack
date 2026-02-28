/// @description Main
// You can write your code in this editor

window_set_fullscreen(true);
//@Field Tile Creation start
var tileSize = 128;
var gap = 2; 
var step = tileSize + gap;

var gridWidth = gameSize * step;
var gridHeight = gameSize * step;

var startX = (room_width / 2) - (gridWidth / 2) + tileSize / 2;
var startY = (room_height / 2) - (gridHeight / 2) + tileSize / 2;

for (var j = 0; j < gameSize; j++) {
    for (var i = 0; i < gameSize; i++) {
        instance_create_layer(startX + i * step, startY + j * step, "Instances", objClickableTile);
    }
}
//@Field end

//@Field Bomb Logic start
var width = gameSize;
var height = gameSize;
grid = [];

for (var i = 0; i < width; i++) {
    for (var j = 0; j < height; j++) {
        grid[i][j] = 0; 
    }
}

var bomboclatCount = round((gameSize * gameSize) / 4.5);

for(var i = 0; i < bomboclatCount; i++) {
	randomX = irandom(gameSize);
	randomY = irandom(gameSize);
	if(grid[randomX][randomY] != 1) {
		grid
	}
}
	