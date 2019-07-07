///@descr Chapter Selector
instance_create_depth(x,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab);
var play_torch = 0;
if(x == 690)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	if(global.active_cat == 1)
	{
		if(ds_map_find_value(global.map_have_been,"Chap0") == 0 && ds_map_find_value(global.map_have_been,"Challenge1") == 0)
		{
			ds_list_add(global.list_cat,"OH GOOD, YOU SEEM","TO BE A SENSIBLE HUMAN,","DEAR HUMAN. NOW PLEASE","TAP THAT BOOK IN THE","CENTER THERE.");
			instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-120,obj_the_cat);
			ds_map_replace(global.map_have_been,"Chap0",1);
			ini_open("save.ini");
			ini_write_real("havebeen","chap0",1);
			ini_close();
		}
	}
	with(obj_menu_light)
	{
		if(x == 0 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.8,250);
			play_torch = 1;
		}
		else if(x == 1408 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(play_torch == 0)
		{
			audio_sound_gain(sd_torch,0,250);
		}
	}
}
else if(x == 2100)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	if(global.active_cat == 1)
	{
		if(ds_map_find_value(global.map_have_been,"ChapSelect") == 0)
		{
			ds_list_add(global.list_cat,"DEAR ME, I DO BELIEVE","I FORGOT TO INTRODUCE","MYSELF: YOU MAY CALL ME","CAT, IF YOU PLEASE; AND","I THINK I SHALL CALL","YOU HUMAN.","I SUGGEST YOU SWIPE","LEFT TO THE 'EXTRAS'","PAGE, SO THAT YOU CAN","START AT THE BEGINNING","BEFORE PROCEEDING TO","THE END.","IF YOU ARE, HOWEVER,","THE ADVENTUROUS TYPE,");
			ds_list_add(global.list_cat,"YOU MAY START HERE, AT","CHAPTER 1, BY TAPPING","THAT STATUETTE ON","THE PEDESTAL.","BUT DO BE WARNED,","DEAR HUMAN, THE GREEK","GODS ARE RATHER FAMOUS","FOR BEING HARD ON ","YOU MORTAL TYPES.");
			instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-109,obj_the_cat);
			ds_map_replace(global.map_have_been,"ChapSelect",1);
			ini_open("save.ini");
			ini_write_real("havebeen","chapselect",1);
			ini_close();
		}
	}
	with(obj_menu_light)
	{
		if(x == 1408 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.8,250);
			play_torch = 1;
		}
		else if(x == 2816 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(x == 0 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(play_torch == 0)
		{
			audio_sound_gain(sd_torch,0,250);
		}
	}
}
else if(x == 3510)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	if(global.active_cat == 1)
	{
		if(ds_map_find_value(global.map_have_been,"Chap2") == 0 && global.farrest_cp < 1)
		{
			ds_list_add(global.list_cat,"IT SEEMS YOU'VE","MADE A WRONG TURN.","YOU MUST FIRST COMPLETE","THE CHAPTER 1 ''CHALLENGE''","TO UNLOCK THIS CHAPTER;","ZEUS' ORDERS.");
			instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-120,obj_the_cat);
			ds_map_replace(global.map_have_been,"Chap2",1);
			ini_open("save.ini");
			ini_write_real("havebeen","chap2",1);
			ini_close();
		}
	}
	with(obj_menu_light)
	{
		if(x == 2816 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.8,250);
			play_torch = 1;
		}
		else if(x == 4224 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(x == 1408 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(play_torch == 0)
		{
			audio_sound_gain(sd_torch,0,250);
		}
	}
}
else if(x == 4920)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	with(obj_menu_light)
	{
		if(x == 4224 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.8,250);
			play_torch = 1;
		}
		else if(x == 5632 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(x == 2816 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(play_torch == 0)
		{
			audio_sound_gain(sd_torch,0,250);
		}
	}
}
else if(x == 6330)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_chapter_tab_sm)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),-10,obj_chapter_tab_sm);
	with(obj_menu_light)
	{
		if(x == 5632 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.8,250);
			play_torch = 1;
		}
		else if(x == 4224 && sprite_index == spr_menu_light)
		{
			audio_sound_gain(sd_torch,0.4,250);
			play_torch = 1;
		}
		else if(play_torch == 0)
		{
			audio_sound_gain(sd_torch,0,250);
		}
	}
}
if(global.open_chapter != 0)
{
	if(global.farrest_cp >= global.open_chapter - 1)
	{
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) - sprite_get_height(spr_scroll_big)/2,-50,obj_scroll_big);
	}
	else
	{
		global.open_chapter = 0;
	}
}
else if(global.rabbit < 9 && !instance_exists(obj_rabbit))
{
	global.rabbit++;
	if(global.rabbit == 8)
	{
		global.rabbit = 0;
		instance_create_depth(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_rabbit)/2,0,obj_rabbit);
	}
}