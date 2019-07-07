global.time_remaining -= 1;
image_xscale -= 0.016;
if(global.time_remaining == global.fail_gold)
{
	image_index = 1;
	with(obj_timer_medal)
	{
		if(image_index == 0)
		{
			alarm_set(0,1);
			if(global.sound == 1)
			{
				audio_play_sound(sd_medal_break,9,0);
			}
		}
	}
}
else if(global.time_remaining == global.fail_silver)
{
	image_index = 2;
	with(obj_timer_medal)
	{
		if(image_index == 1)
		{
			alarm_set(1,1);
			if(global.sound == 1)
			{
				audio_play_sound(sd_medal_break,9,0);
			}
		}
	}
}
if(global.time_remaining == 0)
{
	if(global.music == 1 && audio_is_playing(global.current_music))
	{
		audio_sound_gain(global.current_music,0,500)
	}
	global.won = false;
	global.goto_room = rm_inlvl;
	instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
}
else
{
	alarm_set(0,60);
}

