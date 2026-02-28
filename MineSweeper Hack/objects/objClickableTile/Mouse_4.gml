/// @description Left Pressed
// You can write your code in this editor


if (objMain.grid[gridX][gridY] == 1) {
	var inst = instance_create_layer(x, y, "Instances", objBomb);
	inst.gridX = gridX;
	inst.gridY = gridY;
	objMain.grid[gridX][gridY] = -1;//TODO: lose screen
	instance_destroy();	
} else if (objMain.grid[gridX][gridY] == 0) {
    objMain.grid[gridX][gridY] = -1; 
    instance_destroy(); 
} else if (objMain.grid[gridX][gridY] == 2) {
	var inst = instance_create_layer(x, y, "Instances", objLuckyBlock);
	inst.gridX = gridX;
	inst.gridY = gridY;
	objMain.grid[gridX][gridY] = -1;
	instance_destroy();
}








