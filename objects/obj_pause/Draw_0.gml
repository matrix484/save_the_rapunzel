/// @description Insert description here
draw_sprite(back,0,0,0)
var _h = draw_get_halign()
if(gameover)
{
	for (var i = 0; i < array_length(menu); ++i) 
	{
		draw_set_halign(fa_center)
		draw_rectangle_color(0,141,room_width,141+18,c_black,c_black,c_black,c_black,false);
		draw_text_colour(room_width/2,142,"GAME OVER",c_white,c_white,c_white,c_white,1);
		if(i == option)
			draw_rectangle_color(0,160+(i*18),room_width,160+(i*18)+18,c_black,c_black,c_black,c_black,false);
		draw_set_font(fnt_main)
		draw_text_colour(room_width/2,161+(i*18),menu[i],c_white,c_white,c_white,c_white,1);
	}
}
else
{
	draw_set_halign(fa_center)
	draw_set_font(fnt_main)
	draw_rectangle_color(0,159,room_width,159+18,c_black,c_black,c_black,c_black,false);
	draw_text_colour(room_width/2,160,"PAUSED",c_white,c_white,c_white,c_white,1);
}

draw_set_halign(_h)