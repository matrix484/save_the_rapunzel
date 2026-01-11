/// @description Insert description here
if(gameover)
{
	option += keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up)
	option = clamp(option,0,array_length(menu)-1)
	
	if((keyboard_check_pressed(vk_shift))||keyboard_check_pressed(vk_enter))
	{
		score = 0;
		global.level = 1;
		if(option == 0)
		{
			room_restart()
		}
		else if(option == 1)
		{
			if(os_browser == browser_not_a_browser)
				game_restart()
			else
				room_goto(rm_init)
		}
		
	}
}
else
{
	if((keyboard_check_pressed(vk_shift))||keyboard_check_pressed(vk_enter))
	{
		instance_destroy();
	}
}