/// @description Insert description here

draw_sprite(spr_logo,0,x,y-400)
draw_set_font(fnt_main)
draw_set_halign(fa_center)
draw_text_colour(x,(y-400)+(sprite_get_height(spr_logo)*0.75),"PRESENTS",c_white,c_white,c_white,c_white,1);

draw_self()

if(state > 0)
{
	var txt;
	if(state == 1)
		txt = "PRESS ANY KEY TO START"
	else if(state == 2)
		txt = $"ENHANCED Version|(c) 2025-26 Matrix."

	draw_set_halign(fa_left)
	draw_rectangle_color(0,0,room_width,18,c_black,c_black,c_black,c_black,false);
	draw_set_font(fnt_main)
	draw_text_colour(2,2,txt,c_white,c_white,c_white,c_white,1);
	
	if(state == 2)
	{
		for (var i = 0; i < array_length(menu); ++i) 
		{
			draw_set_halign(fa_center)
			if(i == option)
				draw_rectangle_color(0,160+(i*18),room_width,160+(i*18)+18,c_black,c_black,c_black,c_black,false);
			draw_set_font(fnt_main)
			draw_text_colour(x,162+(i*18),menu[i],c_white,c_white,c_white,c_white,1);
		}
	}
}
draw_set_halign(fa_left)