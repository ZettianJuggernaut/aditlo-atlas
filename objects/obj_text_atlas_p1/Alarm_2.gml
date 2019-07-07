/// @description Stop Shake

image_speed = 0;
global.shake = false;
x = 704;
y = 528;
with(obj_text_atlas_p2)
{
	image_speed = 0;
	x = 704;
	y = 528;
}
with(obj_text_atlas_left)
{
	x = 704;
	y = 528;
	alarm_set(1,1);
}
with(obj_text_atlas_right)
{
	x = 704;
	y = 528;
	alarm_set(1,1);
}