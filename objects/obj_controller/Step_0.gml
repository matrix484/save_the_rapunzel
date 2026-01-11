/// @description Insert description here
score ++;

layer_vspeed(layer_get_id("Background"),global.spd);

target = (1000*global.level)+(250*(global.level-1))

//var txt = (blink == false) ? $"Level: {global.level}|Score: {score}|Target: {target}" : ""

//window_set_caption(txt);

if(score > target)
{
	if(ready == 0)
	{
		ready = 1;
		alarm[3] = 120;
		alarm[4] = 20;
	}
	audio_stop_play_sound(snd_up,0,false);
	global.level ++;
	global.spd *= 1.10;
}

if(keyboard_check_pressed(vk_enter))
{
	if(!instance_exists(obj_pause))
	{
		with(instance_create_depth(0,0,-5,obj_pause))
		{
			gameover = false;
		}
	}
}