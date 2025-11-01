function audio_stop_play_sound(index,priority,loops)
{
	audio_stop_all();
	return audio_play_sound(index,priority,loops)
}