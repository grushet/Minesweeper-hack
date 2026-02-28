/// @description Insert description here
// You can write your code in this editor


var rx, ry;
var attempts = 0;
do {
    rx = irandom(objMain.gameSize - 1);
    ry = irandom(objMain.gameSize - 1);
    attempts++;
} until (objMain.grid[rx][ry] == 0 || attempts > 100);

if (attempts <= 100) {
    with (objClickableTile) {
        if (gridX == rx && gridY == ry) {
            objMain.grid[gridX][gridY] = -1;
            instance_destroy();
            break;
        }
    }
}








