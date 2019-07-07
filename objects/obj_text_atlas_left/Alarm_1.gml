/// @description Fade Out

if(image_alpha > 0)
{
  image_alpha -= 0.01;
  alarm_set(1,1);
}
else if(!instance_exists(obj_fade_black))
{
	if(!achievement_login_status())
	{
		ini_open("save.ini");
		ini_write_real("perfs","gsignin",0);
		ini_close();
	}
	global.goto_room = rm_menu_main;
	instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black)
}