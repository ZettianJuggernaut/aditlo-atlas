var wind_direction = irandom(1);
if(wind_direction == 1)
{
  global.windspeed = 0;
  alarm_set(1,random_range(90,210));
  with(obj_rain)
  {
    hspeed = 0;
  }
  with(obj_leaf_lvl)
  {
    hspeed = -3;
    vspeed = 5;
  }
  with(obj_darkness_cloud)
  {
    hspeed = -5;
  }
  with(obj_bg_fog)
  {
    hspeed = -0.5;
  }
}
else if(wind_direction == 0)
{
	alarm_set(0,random_range(90,210));
	if(global.sound == 1 && !audio_is_playing(sd_wind))
	{
		audio_play_sound(sd_wind,9,0);
	}
	if(global.sound == 1 && !audio_is_playing(sd_wind))
	{
		audio_stop_sound(sd_wind);
	}
}