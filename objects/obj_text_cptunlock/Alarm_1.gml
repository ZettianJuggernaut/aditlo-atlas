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
if(global.current_cp == 1)
{
	image_xscale = 0.35;
}
else if(global.current_cp == 2)
{
	image_xscale = 0.25;
}
else if(global.current_cp == 3)
{
	image_xscale = 0.18;
}