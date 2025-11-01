/// @description Insert description here
instance_create_depth(random_range(16,room_width-16),-32,depth+1,obj_enemy);

alarm[0] = max(random_range(30,120)-global.spd,1);