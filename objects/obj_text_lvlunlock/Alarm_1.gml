var xx, yy;
with(instance_nearest(x,y,obj_unlocked_box))
{
	xx = x;
	yy = y;
}
global.current_unlock += 1;
script_execute(unlocks);
speed = 0;
x = xx;
y = yy;
image_xscale = 0.85;
image_yscale = 0.85;