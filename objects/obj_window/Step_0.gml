/// @description Insert description here

yspeed = global.spd;


x += xspeed;
y += yspeed;



if(bbox_bottom > (room_height+40))
{
	instance_destroy();
}