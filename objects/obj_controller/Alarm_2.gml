/// @description Insert description here
var _x = choose(16,room_width-16);
instance_create_depth(_x,-32,depth+1,obj_surprise);

alarm[2] = max(random_range(120,1200)-global.spd,1);