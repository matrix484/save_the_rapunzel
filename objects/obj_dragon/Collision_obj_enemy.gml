/// @description Insert description here
if(inv == false)
{
	inv = true;
	alarm[1] = 150;
	score += 1000;
	audio_stop_play_sound(snd_dragon_hit,0,false)
	if(hits > 0)
	{
		hits--;
	}
	else
	{
		ready = 1;
		instance_destroy(myfire)
	}
	instance_destroy(other);
}