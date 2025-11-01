/// @description Insert description here
if(!instance_exists(obj_dragon))
	instance_create_depth(random_range(32,room_width-32),room_height+64,depth+1,obj_dragon);

alarm[5] = max(random_range(120,1200)-global.spd,1);