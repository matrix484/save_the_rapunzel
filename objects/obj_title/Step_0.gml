/// @description Insert description here
layer_vspeed(layer_get_id("Background"),spd);


if(state == 0)
{
	if(y <= (room_height/2))
	{
		spd = 0;
		audio_stop_play_sound(snd_fire,0,false);
		state = 1;
	}
	else
	{
		y--;
	}
}
else if(state == 1)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		y -= 32;
		state = 2;
	}
}
else if(state == 2)
{
	option += keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	option = clamp(option,0,array_length(menu)-1)
	
	if((keyboard_check_pressed(vk_shift))||keyboard_check_pressed(vk_enter))
	{
		if(option == 0)
		{
			room_goto_next();
		}
		else if(option == 2)
		{
			game_end()
		}
		
	}
	
}