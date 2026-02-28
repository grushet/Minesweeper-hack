/// @description Left Pressed
// You can write your code in this editor

if (objMain.grid[gridX][gridY] == -1) exit;

var cellValue = objMain.grid[gridX][gridY];

if (cellValue == -1) exit;

if (cellValue == 1) {
    // BOMB
    instance_create_layer(x, y, "Instances", objBomb);
	alarm_set(0, room_speed * 4)
    objMain.grid[gridX][gridY] = -1;
    instance_destroy();
    
} else if (cellValue == 2) {
    // LUCKY BLOCK
    var inst = instance_create_layer(x, y, "Instances", objLuckyBlock);
    inst.gridX = gridX;
    inst.gridY = gridY;
    instance_destroy();
    
} else {
    var bombNum = calculateN(gridX, gridY);
    var inst = instance_create_layer(x, y, "Instances", objRevealed);
    inst.gridX = gridX;
    inst.gridY = gridY;
    
    if (bombNum == 0) inst.sprite_index = spr_0;
    if (bombNum == 1) inst.sprite_index = spr_1;
    if (bombNum == 2) inst.sprite_index = spr_2;
    if (bombNum == 3) inst.sprite_index = spr_3;
    if (bombNum == 4) inst.sprite_index = spr_4;
    if (bombNum == 5) inst.sprite_index = spr_5;
    if (bombNum == 6) inst.sprite_index = spr_6;
    if (bombNum == 7) inst.sprite_index = spr_7;
    if (bombNum == 8) inst.sprite_index = spr_8;
    
    objMain.grid[gridX][gridY] = -1;
	show_debug_message("gridX=" + string(gridX) + " gridY=" + string(gridY) + " bombCount=" + string(bombNum));
show_debug_message("grid value=" + string(objMain.grid[gridX][gridY]));

// Also print neighbors:
for (var dy = -1; dy <= 1; dy++) {
    for (var dx = -1; dx <= 1; dx++) {
        var nx = gridX + dx;
        var ny = gridY + dy;
        if (nx >= 0 && nx < objMain.gameSize && ny >= 0 && ny < objMain.gameSize) {
            show_debug_message("neighbor [" + string(nx) + "][" + string(ny) + "] = " + string(objMain.grid[nx][ny]));
        }
    }
}
    instance_destroy();
}










