image_speed = .5;
var leaf_look = irandom(1);
if(leaf_look == 1)
{
  sprite_index = spr_leaf_b;
}
image_angle = random(360);
if(global.windspeed > 0)
{
  hspeed = 8;
}
else if(global.windspeed < 0)
{
  hspeed = -8;
}
vspeed = random(0.7);
image_xscale = random_range(0.5,1);
image_yscale = image_xscale;

