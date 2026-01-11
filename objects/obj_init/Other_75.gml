/// @description Detects whether the gamepad is connected or not

//Gamepad type
gamepad_input = 0;

//Check first if the variable exists
if (variable_global_exists("gamepad")) {
    
    //Update gamepad state
    global.gamepad = gamepad_input;
    
    //Show a temporary message if the gamepad has been connected
    if (gamepad_check == 0) {
    
        //If a gamepad is connected
        if (global.gamepad == 1) {
        
            //Show message
           // message = "Gamepad Connected";
		   //if(room !=rm_init)
		   //{
			//instance_create_depth(0,0,-999999,obj_gamepad_notification)
		   //}
            
            //Hide it
            //alarm[3] = 30;
            
            //Let the game know it
            gamepad_check = 1;
			
			//if(global.show_keys == true)
			//{
			//	global.show_keys = false;
			//}
			
        }
    }
    
    //Otherwise
    else {
    
        //If a gamepad is connected
        if (global.gamepad == 0) {
        
            //Show message
            //message = "Gamepad Disconnected";
			//if(room !=rm_init)
		   //{
			//	with instance_create_depth(0,0,-999999,obj_gamepad_notification){
				
			//		sprite_index = spr_gamepad_disconnected;
				
			//	}
		   //}
		   
		   //if(global.show_keys == false)
			//{
			//	global.show_keys = true;
			//}
			
            
            //Hide it
           // alarm[3] = 30;
            
            //Let the game know it
            gamepad_check = 0;
        }    
    }
}
