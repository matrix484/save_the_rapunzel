/// @description Insert description here
var _x = choose(braid1.x,braid2.x,braid3.x)
instance_create_depth(_x,-32,depth+1,obj_coin);

alarm[1] = max(random_range(30,120)-global.spd,1);