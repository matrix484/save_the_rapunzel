/// @description Insert description here
if(flip == 1)
{
	if(ready == 0)
	{
		if(image_xscale < 8)
		{
			image_xscale += 1;
		}
		else
		{
			image_speed = 1;
			ready = 1;
		}
	}

	else if(ready == 2)
	{
		if(image_index == 0)
		{
			image_speed = 0
			ready = 3;
		}
	}

	else if(ready == 3)
	{
		if(image_xscale > 0)
		{
			image_xscale -= 1;
		}
		else
		{
			ready = -1;
			alarm[0] = random_range(60,120);
		}
	}
}
else if (flip == -1)
{
	if(ready == 0)
	{
		if(image_xscale > -8)
		{
			image_xscale -= 1;
		}
		else
		{
			image_speed = 1;
			ready = 1;
		}
	}

	else if(ready == 2)
	{
		if(image_index == 0)
		{
			image_speed = 0
			ready = 3;
		}
	}

	else if(ready == 3)
	{
		if(image_xscale < 0)
		{
			image_xscale += 1;
		}
		else
		{
			ready = -1;
			alarm[0] = 120;
		}
	}
}


yspeed = global.spd;


x += xspeed;
y += yspeed;


if(bbox_bottom > (room_height+40))
{
	instance_destroy();
}