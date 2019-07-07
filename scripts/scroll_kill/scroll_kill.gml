instance_destroy(obj_selector_level);
instance_destroy(obj_button_challenge);
instance_destroy(obj_button_tutorial);
instance_destroy(obj_button_endless);
instance_destroy(obj_button_eod);
instance_destroy(obj_button_bizarro);
instance_destroy(obj_lvl_divider);
instance_destroy(obj_endmode_score);
instance_destroy(obj_watermark_chapter);
with(obj_scroll_big)
{
	alarm_set(0,-1);
	vspeed = -28;
}