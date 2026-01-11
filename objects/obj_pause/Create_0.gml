/// @description Insert description here
gameover = 0;
option = 0;
back = sprite_create_from_surface(application_surface,0,0,room_width,room_height,0,0,0,0);
instance_deactivate_all(true)
instance_activate_object(obj_init)

menu[0] = "Retry"
menu[1] = "Main Menu"