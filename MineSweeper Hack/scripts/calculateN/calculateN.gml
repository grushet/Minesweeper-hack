// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculateN(gx, gy) {
    var bombCount = 0;
    
    // check all 8 directions explicitly
    var checkX = [gx-1, gx,   gx+1, gx-1, gx+1, gx-1, gx,   gx+1];
    var checkY = [gy-1, gy-1, gy-1, gy,   gy,   gy+1, gy+1, gy+1];
    
    for (var i = 0; i < 8; i++) {
        var nx = checkX[i];
        var ny = checkY[i];
        
        // bounds check
        if (nx < 0 || nx >= objMain.gameSize) continue;
        if (ny < 0 || ny >= objMain.gameSize) continue;
        
        // only count actual bombs (value 1)
        if (objMain.grid[nx][ny] == 1) {
            bombCount++;
        }
    }
    
    return bombCount;
}