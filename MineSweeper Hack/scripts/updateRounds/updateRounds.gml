// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateRounds() {
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
		var lay_id = layer_get_id("Background");
		var bg_id = layer_background_get_id(lay_id);
		layer_background_sprite(bg_id, grassBackground);
	} else if (objMain.roundCount == 2) {
		var lay_id = layer_get_id("Background");
		var bg_id = layer_background_get_id(lay_id);
		layer_background_sprite(bg_id, dirtBackground);
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);
	} else if (objMain.roundCount == 3) {
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);
		var lay_id = layer_get_id("Background");
		var bg_id = layer_background_get_id(lay_id);
		layer_background_sprite(bg_id, rockBackground);
	} else if (objMain.roundCount == 4) {
		var lay_id = layer_get_id("Background");
		var bg_id = layer_background_get_id(lay_id);
		layer_background_sprite(bg_id, bedrockBackground);
		layer_set_visible("LeafEffect", false);
		layer_set_visible("DustEffect", true);	
	}
	
}