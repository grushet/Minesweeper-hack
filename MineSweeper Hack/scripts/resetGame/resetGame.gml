// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetGame() {
    var savedTimer = objMain.timer;
    
    with (objClickableTile) { instance_destroy(); }
    with (objRevealed)      { instance_destroy(); }
    with (objBomb)          { instance_destroy(); }
    with (objLuckyBlock)    { instance_destroy(); }
    with (objFlag)          { instance_destroy(); }
    
    objMain.grid = array_create(objMain.gameSize);
    for (var i = 0; i < objMain.gameSize; i++) {
        objMain.grid[i] = array_create(objMain.gameSize, 0);
    }
    
    setupGame(); 
    
    objMain.timer = savedTimer;
    objMain.timerTick = 0;
    objMain.locked = false;
}