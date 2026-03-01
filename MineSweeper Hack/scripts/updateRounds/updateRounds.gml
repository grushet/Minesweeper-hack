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
	
	if(objMain.roundCount == 1) {
		layer_set_visible("LeafEffect", true);
		layer_set_visible("DustEffect", false);
		audio_play_sound(backgroundSound, 1, true);
	} else if (objMain.roundCount == 2) {
		audio_stop_sound(backgroundSound);
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);
	} else if (objMain.roundCount == 3) {
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);
	} else if (objMain.roundCount == 4) {
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);	
	}
	
}