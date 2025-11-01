/// @description Insert description here
if(climb)&&(move_v < 0)
{
	sprite_index = spr_player;
	image_speed = 1;
	if(!audio_is_playing(snd_climb))
	{
		if(audio_is_playing(snd_coin))||(audio_is_playing(snd_hurt))||(audio_is_playing(snd_up))||(audio_is_playing(snd_fire))||(audio_is_playing(snd_dragon_hit))
			audio_stop_sound(snd_climb)
		else
			audio_stop_play_sound(snd_climb,1,true);
	}
}
else if(climb)&&(move_v >= 0)
{
	sprite_index = spr_player_down;
	image_speed= 0;
	audio_stop_sound(snd_climb);
}
else
{
	sprite_index = spr_player_hit;
}

if(inv)||(!grab)
{
	sprite_index = spr_player_hit;
	audio_stop_sound(snd_climb);
}

if(move_h != 0)
	image_xscale = move_h;