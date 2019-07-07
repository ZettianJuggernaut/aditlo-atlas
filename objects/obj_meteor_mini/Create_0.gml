vspeed = random_range(6,10);
hspeed = random_range(-3,3);
image_xscale = random_range(0.5,1);
image_yscale = image_xscale;
if(room == rm_game_modes)
{
  alarm_set(0,random_range(45,100));
}
alarm_set(1,2)