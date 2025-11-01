/// @description Insert description here

var jump = keyboard_check_pressed(vk_shift);
climb = (instance_exists(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_hair,0,false)))
var move_u = keyboard_check(vk_up)
var move_d = keyboard_check(vk_down);

move_v = move_d-move_u;

if(climb)&&(grab == 1)
{
	if(jump_time < max_jtime)
		jump_time ++;
		
	
	if(move_v != 0)
	{
		yspeed += yacc*move_v;
		yspeed = clamp(yspeed,-1,2);
		
	}
	else if(move_h == 0)
	{
		yspeed = global.spd;
	}
	
	ygrav = 0;
	
}
else
{
	ygrav = 0.2;
	
	if(move_v != 0)
	{
		grab += abs(move_v);
		grab = min(grab,1);
	}
}



yspeed += ygrav;
yspeed = min(yspeed,maxspd_y);


var move_r = keyboard_check(vk_right)
var move_l = keyboard_check(vk_left);

if(inv == false)
	move_h = move_r-move_l

if(move_h != 0)
{
	grab += abs(move_h);
	grab = min(grab,1);
	xspeed += xacc*move_h;
	xspeed = clamp(xspeed,-maxspd_x,maxspd_x);
}
else
{
	if(xspeed > 0)
		xspeed -= xacc;
	else if(xspeed < 0)
		xspeed += xacc;
}



if(jump)
{
	ygrav = 0.2;
	grab = 0;
	if(jump_time > 0)
	{
		yspeed = (-jump_str)*2;
		jump_time = 0;
	}
	audio_stop_play_sound(snd_jump,0,false);
}

x += xspeed;
y += yspeed;

if(bbox_bottom > (room_height+40))
{
	audio_stop_play_sound(snd_lose,0,false);
	show_message("You successfully died!");
	game_restart();
	score = 0;
	global.level = 1;
}