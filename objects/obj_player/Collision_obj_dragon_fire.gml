/// @description Insert description here
if(inv == false)
{
	grab = 0;
	if(xspeed == 0)
		xspeed = choose(-7,7);
	else
		xspeed = -sign(xspeed)*7;
	inv = true;
	
	yspeed = -2;
	
	audio_stop_play_sound(snd_hurt,0,false);
	alarm[0] = 10;
}