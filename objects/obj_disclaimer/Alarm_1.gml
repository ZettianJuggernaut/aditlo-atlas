image_alpha -= 0.05;
if(image_alpha > 0)
{
	alarm_set(1,1);
}
else
{
	with(obj_jfg_donut)
	{
		alarm_set(0,1);
	}
	with(obj_jfg_jelly)
	{
		alarm_set(2,1);
	}
	with(obj_jfg_filled)
	{
		alarm_set(2,1);
	}
	with(obj_jfg_dash)
	{
		alarm_set(0,1);
	}
	global.disclaimer = 1;
	ini_open("save.ini");
	ini_write_real("perfs","disclaimer",1);
	ini_close();
	instance_destroy();
}