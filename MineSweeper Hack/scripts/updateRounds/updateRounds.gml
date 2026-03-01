// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateRounds() {
    if (objMain.roundCount > 4) objMain.roundCount = 1;
    objMain.timerTick = 0;
    switch (objMain.roundCount) {
        case 1: objRound.sprite_index = Round1; break;
        case 2: objRound.sprite_index = Round2; break;
        case 3: objRound.sprite_index = Round3; break;
        case 4: objRound.sprite_index = Round4; break;
    }
}