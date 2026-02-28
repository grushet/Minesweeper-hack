// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetGame() {
    with (objClickableTile) { instance_destroy(); }
    with (objRevealed)       { instance_destroy(); }
    with (objBomb)           { instance_destroy(); }
    with (objLuckyBlock)     { instance_destroy(); }
    objMain.grid = array_create(objMain.gameSize);
    for (var i = 0; i < objMain.gameSize; i++) {
        objMain.grid[i] = array_create(objMain.gameSize, 0);
    }
    with (objMain) {
        event_perform(ev_create, 0);
    }
}