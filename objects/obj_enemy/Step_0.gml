/// @description Insert description here

yspeed += ygrav;
yspeed = min(yspeed,maxspd_y);

x += xspeed;
y += yspeed;

if(image_index != 1)
	image_angle += (yspeed*0.5);
else
	image_angle = 0;
	
	
if(bbox_bottom > (room_height+40))
{
	instance_destroy();
}