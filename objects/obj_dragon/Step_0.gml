/// @description Insert description here
if(ready == 0)
{
	if(myfire != noone)
	{
		if(instance_exists(myfire))
		{
			myfire.x = x;
			myfire.y = y;
		}
	}

	if(instance_exists(obj_player))&&(inv = false)
	{
		move_towards_point(obj_player.x,obj_player.y+48,0.5);
	}
}
else
{
	yspeed += ygrav;
	yspeed = min(yspeed,maxspd_y);

	x += xspeed;
	y += yspeed;
	
	
	if(bbox_bottom > (room_height+40))
	{
		instance_destroy();
	}
	
}