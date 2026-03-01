/// @description Insert description here
// You can write your code in this editor

var displayTimer = max(timer, 0);
var ms = 99 - floor((timerTick / room_speed) * 100);
if (displayTimer <= 0) ms = 0;
var timeStr = string(displayTimer) + "." + string_format(ms, 2, 0);

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fontTimer);
draw_text(display_get_gui_width() / 2, 290, timeStr);










