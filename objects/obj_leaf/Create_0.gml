var leaf = irandom(1);

if (leaf == 1)
{
  sprite_index = spr_leaf_a;
}
else
{
  sprite_index = spr_leaf_b;
}
image_speed = 0.25;
image_xscale = random_range(0.5,1);
image_yscale = image_xscale;
global.spin = irandom(1);
image_angle = random(360);
hspeed = random_range(-1.5,1.5);
vspeed = random_range(1.5,2.5);
alarm_set(0,random_range(60,240));

