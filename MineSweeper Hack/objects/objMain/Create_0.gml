/// @description Main
// You can write your code in this editor
randomize();
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
        var inst = instance_create_layer(startX + i * step, startY + j * step, "Instances", objClickableTile);
        inst.gridX = i; 
        inst.gridY = j; 
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

var bomboclatCount = floor((gameSize * gameSize) / 5.6741);

for (var i = 0; i < bomboclatCount; i++) {
    var randomX, randomY;
    do {
        randomX = irandom(gameSize - 1);
        randomY = irandom(gameSize - 1);
    } until (grid[randomX][randomY] != 1);
    
    grid[randomX][randomY] = 1;
}

var maxGold = gameSize * gameSize;
var goldCount = irandom(maxGold);

for (var i = 0; i < goldCount; i++) {
    var gx, gy;
    do {
        gx = irandom(gameSize - 1);
        gy = irandom(gameSize - 1);
    } until (grid[gx][gy] == 0);
    
    grid[gx][gy] = 2;
}
