if(!instance_exists(obj_the_cat))
{
	if(obj_cam.x <= 4920 && global.cam_moving == false)
	{
		global.cam_moving = true;
		with(obj_cam)
		{
			x += 10;
			hspeed = 70;
		}
		if(global.sound == 1)
		{
			audio_play_sound(sd_cam_slide,10,0);
		}
		instance_destroy(obj_nav_main);
		instance_destroy(obj_nav_prof);
		instance_destroy(obj_nav_flag);
		instance_destroy(obj_chapter_tab);
		instance_destroy(obj_chapter_tab_sm);
	}
}