if(global.currently_playing == 5 && ds_map_find_value(global.map_have_been,"BizarroWorld") == 0)
{
	image_alpha = 0.95;
}
else
{
	image_alpha = 0;
}
alarm_set(0,1);
skeleton_animation_set("Idle");
skeleton_animation_mix("Idle","Talk",.4);
skeleton_animation_mix("Talk","Idle",.4);
skeleton_animation_mix("Idle","Idle",.4);