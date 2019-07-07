/// @description Start Shake

alarm_set(2,78);
alarm_set(3,40);
image_speed = .25;
with(obj_text_atlas_p2)
{
	image_speed = .25;
}
global.shake = true;