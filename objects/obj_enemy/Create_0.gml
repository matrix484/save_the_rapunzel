/// @description Insert description here

xspeed = 0;
yspeed = 0;

ygrav = 0.2;

maxspd_y = 8;

image_speed = 0;

image_index = random_range(0,image_number);



if(bbox_bottom > (room_height+40))
{
	instance_destroy();
}