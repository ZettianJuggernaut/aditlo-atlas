alarm_set(3,10);
var wind_direction = irandom(1);
if(wind_direction == 1)
{
	global.windspeed = 1;
	alarm_set(2,random_range(90,210));
	with(obj_rain)
	{
		hspeed = 3;
	}
	with(obj_leaf_lvl)
	{
		hspeed = 8;
		vspeed = .5;
	}
	with(obj_darkness_cloud)
	{
		hspeed = 7;
	}
	with(obj_bg_fog)
	{
		hspeed = 1.5;
	}
}
else if(wind_direction == 0)
{
	global.windspeed = -1;
	 alarm_set(0,random_range(90,210));
	with(obj_rain)
	{
		hspeed = -3;
	}
	with(obj_leaf_lvl)
	{
		hspeed = -8;
		vspeed = .5;
	}
	with(obj_darkness_cloud)
	{
		hspeed = -7;
	}
	with(obj_bg_fog)
	{
		hspeed = -1.5;
	}
}
if(global.sound == 1 && !audio_is_playing(sd_wind))
{
	audio_play_sound(sd_wind,9,0);
}