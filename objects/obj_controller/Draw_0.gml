/// @description Insert description here
var txt = (blink == false) ? $"Level: {global.level}|Score: {score}|Target: {target}" : ""

draw_rectangle_color(0,0,room_width,18,c_black,c_black,c_black,c_black,false);
draw_set_font(fnt_main)
draw_text_colour(2,2,txt,c_white,c_white,c_white,c_white,1);