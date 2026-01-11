/// @description Insert description here
 //If there's a gamepad active
//if(global.gamepad)
{
    
    //Left Stick - Up
    if (leftstick[0] = 0)
    && (gamepad_axis_value(gamepad_input, gp_axislv) <= -0.5) {
        
        leftstick[0] = 1;
		global.stick = true;
        keyboard_key_press(vk_up);
    }
    else if (leftstick[0] == 1)
    && (gamepad_axis_value(gamepad_input, gp_axislv) > -0.5) {
        
        leftstick[0] = 0;
		global.stick = true;
        keyboard_key_release(vk_up);
    }
        
    //Left Stick - Down
    if (leftstick[1] = 0)
    && (gamepad_axis_value(gamepad_input, gp_axislv) >= 0.5) {
        
        leftstick[1] = 1;
		global.stick = true;
        keyboard_key_press(vk_down);
    }
    else if (leftstick[1] == 1)
    && (gamepad_axis_value(gamepad_input, gp_axislv) < 0.5) {
        
        leftstick[1] = 0;
		global.stick = true;
        keyboard_key_release(vk_down);
    }
        
    //Left Stick - Left
    if (leftstick[2] = 0)
    && (gamepad_axis_value(gamepad_input, gp_axislh) <= -0.5) {
        
        leftstick[2] = 1;
		global.stick = true;
        keyboard_key_press(vk_left);
    }
    else if (leftstick[2] == 1)
    && (gamepad_axis_value(gamepad_input, gp_axislh) > -0.5) {
        
        leftstick[2] = 0;
		global.stick = true;
        keyboard_key_release(vk_left);
    }
        
    //Left Stick - Right
    if (leftstick[3] = 0)
    && (gamepad_axis_value(gamepad_input, gp_axislh) >= 0.5) {
        
        leftstick[3] = 1;
		global.stick = true;
        keyboard_key_press(vk_right);
    }
    else if (leftstick[3] == 1)
    && (gamepad_axis_value(gamepad_input, gp_axislh) < 0.5) {
        
        leftstick[3] = 0;
		global.stick = true;
        keyboard_key_release(vk_right);
    }
	
	if(gamepad_button_check_pressed(gamepad_input,gp_padl))
		keyboard_key_press(vk_left)
	
	if(gamepad_button_check_released(gamepad_input,gp_padl))
		keyboard_key_release(vk_left)
		
	if(gamepad_button_check_pressed(gamepad_input,gp_padr))
		keyboard_key_press(vk_right)
	
	if(gamepad_button_check_released(gamepad_input,gp_padr))
		keyboard_key_release(vk_right)
		
	if(gamepad_button_check_pressed(gamepad_input,gp_padu))
		keyboard_key_press(vk_up)
	
	if(gamepad_button_check_released(gamepad_input,gp_padu))
		keyboard_key_release(vk_up)
		
	if(gamepad_button_check_pressed(gamepad_input,gp_padd))
		keyboard_key_press(vk_down)
	
	if(gamepad_button_check_released(gamepad_input,gp_padd))
		keyboard_key_release(vk_down)
		
	if(gamepad_button_check_pressed(gamepad_input,gp_face1))
		keyboard_key_press(vk_shift)
	
	if(gamepad_button_check_released(gamepad_input,gp_face1))
		keyboard_key_release(vk_shift)
		
	if(gamepad_button_check_pressed(gamepad_input,gp_start))
		keyboard_key_press(vk_enter)
	
	if(gamepad_button_check_released(gamepad_input,gp_start))
		keyboard_key_release(vk_enter)
}