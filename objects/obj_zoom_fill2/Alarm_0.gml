image_xscale -= 0.13;
image_yscale -= 0.13;
if(image_xscale > 0.1)
{
	alarm_set(0,1);
}
else
{
	layer_background_blend(layer_background_get_id("Colour"),c_white);
	instance_destroy(obj_jfg_donut);
	instance_destroy(obj_zoom);
	instance_destroy(obj_zoom_fill);
	instance_destroy();
}