//Game Over Clear Up
ini_open("save.ini");
global.invert_tilt = ini_read_real("perfs","inverttilt",0);
global.current_skin = ini_read_real("perfs","skin",0);
ini_close();
global.video_ad_pop = 0;
if(global.currently_playing < 4 || global.currently_playing == 5)
{
	ds_list_destroy(global.list_drop_farleft);
	ds_list_destroy(global.list_drop_left);
	ds_list_destroy(global.list_drop_right);
	ds_list_destroy(global.list_drop_farright);
	ds_list_destroy(global.list_sequencing);
	ds_list_destroy(global.list_scored);
	ds_list_destroy(global.list_swipes);
	ds_list_destroy(global.list_token_black);
	ds_list_destroy(global.list_token_blue);
	ds_list_destroy(global.list_token_green);
	ds_list_destroy(global.list_token_red);
	ds_list_destroy(global.list_token_white);
	ds_list_destroy(global.list_token_yellow);
	if(part_system_exists(global.ps_ghost))
	{
		part_system_destroy(global.ps_ghost);
		part_type_destroy(global.pt_ghost);
	}
	if(part_system_exists(global.ps_scored))
	{
		part_system_destroy(global.ps_scored);
		part_type_destroy(global.pt_scored);
	}
}

//Game Over Set-Up
instance_create_depth(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,-20,obj_scroll_gameover);
repeat(6)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + random(camera_get_view_width(view_camera[0])),camera_get_view_y(view_camera[0]) + random(camera_get_view_height(view_camera[0])),1,obj_bg_fog);
}
global.ps_unlock = -1;
global.pt_unlock = -1;
global.current_music = sd_menu_music;
ds_list_clear(global.list_unlocks);
audio_stop_all();
if(global.music == 1)
{
	audio_play_sound(global.current_music,1,1);
	audio_sound_gain(global.current_music,0,1);
	audio_sound_gain(global.current_music,1,500);
}
if(global.won == true)
{
	if(global.music == 1)
	{
		audio_play_sound(sd_victroy,2,1);
	}
	if(global.currently_playing == 0)
	{
		global.current_cp++;
		ds_list_add(global.list_unlocks,"5cpt_complete");
		if(global.current_cp > global.farrest_cp)
		{
			global.farrest_cp++;
			ini_open("save.ini");
			ini_write_real("progress","checkpoint",global.farrest_cp);
			ini_close();
			if(global.current_cp < 4)
			{
				ds_list_add(global.list_unlocks,"4cpt_unlock");
			}
		}
		if(global.current_cp == 1 && global.lvlcomplete == -1)
		{
			global.lvlcomplete = 0;
			ini_open("save.ini");
			ini_write_real("progress","level",global.lvlcomplete);
			ini_close();
			ds_list_add(global.list_unlocks,"4lvl_unlock","3skin_mod");
			if(achievement_available())
			{
				//Herculean Prowess Achiev
				achievement_increment("CgkIpuaHvKwHEAIQAQ",1);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",4);
			}
			if(ds_list_find_index(global.list_unlocked_skins,2) == -1)
			{
				script_execute(unlock_skin,2,"skin3");
			}
			if(ds_list_find_index(global.list_unlocked_skins,9) == -1)
			{
				script_execute(unlock_skin,9,"skin10");
			}
			if(ds_list_find_index(global.list_unlocked_skins,16) == -1)
			{
				script_execute(unlock_skin,16,"skin17");
			}
			if(ds_list_find_index(global.list_unlocked_skins,22) == -1)
			{
				script_execute(unlock_skin,22,"skin23");
			}
			
		}
		else if(global.current_cp == 2 && global.lvlcomplete2 == -1)
		{
			global.lvlcomplete2 = 0;
			ini_open("save.ini");
			ini_write_real("progress","level2",global.lvlcomplete2);
			ini_close();
			ds_list_add(global.list_unlocks,"4lvl_unlock","3skin_elem");
			if(achievement_available())
			{
				//Herculean Prowess Achiev
				achievement_increment("CgkIpuaHvKwHEAIQAQ",1);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",6);
			}
			if(ds_list_find_index(global.list_unlocked_skins,3) == -1)
			{
				script_execute(unlock_skin,3,"skin4");
			}
			if(ds_list_find_index(global.list_unlocked_skins,11) == -1)
			{
				script_execute(unlock_skin,11,"skin12");
			}
			if(ds_list_find_index(global.list_unlocked_skins,14) == -1)
			{
				script_execute(unlock_skin,14,"skin15");
			}
			if(ds_list_find_index(global.list_unlocked_skins,21) == -1)
			{
				script_execute(unlock_skin,21,"skin22");
			}
			if(ds_list_find_index(global.list_unlocked_skins,25) == -1)
			{
				script_execute(unlock_skin,25,"skin26");
			}
			if(ds_list_find_index(global.list_unlocked_skins,31) == -1)
			{
				script_execute(unlock_skin,31,"skin32");
			}
		}
		else if(global.current_cp == 3 && global.lvlcomplete3 == -1)
		{
			global.lvlcomplete3 = 0;
			ini_open("save.ini");
			ini_write_real("progress","level3",global.lvlcomplete3);
			ini_close();
			ds_list_add(global.list_unlocks,"4lvl_unlock","3skin_genre");
			if(achievement_available())
			{
				//Herculean Prowess
				achievement_increment("CgkIpuaHvKwHEAIQAQ",1);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",4);
			}
			if(ds_list_find_index(global.list_unlocked_skins,6) == -1)
			{
				script_execute(unlock_skin,6,"skin7");
			}
			if(ds_list_find_index(global.list_unlocked_skins,20) == -1)
			{
				script_execute(unlock_skin,20,"skin21");
			}
			if(ds_list_find_index(global.list_unlocked_skins,26) == -1)
			{
				script_execute(unlock_skin,26,"skin27");
			}
			if(ds_list_find_index(global.list_unlocked_skins,30) == -1)
			{
				script_execute(unlock_skin,30,"skin31");
			}
		}
		else if(global.current_cp == 4 && global.lvlcomplete4 == -1)
		{
			global.lvlcomplete4 = 0;
			ini_open("save.ini");
			ini_write_real("progress","level4",global.lvlcomplete4);
			ini_close();
			ds_list_add(global.list_unlocks,"4lvl_unlock","3skin_god");
			if(achievement_available())
			{
				//Herculean Prowess Achiev
				achievement_increment("CgkIpuaHvKwHEAIQAQ",1);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",4);
			}
			if(ds_list_find_index(global.list_unlocked_skins,5) == -1)
			{
				script_execute(unlock_skin,5,"skin6");
			}
			if(ds_list_find_index(global.list_unlocked_skins,7) == -1)
			{
				script_execute(unlock_skin,7,"skin8");
			}
			if(ds_list_find_index(global.list_unlocked_skins,18) == -1)
			{
				script_execute(unlock_skin,18,"skin19");
			}
			if(ds_list_find_index(global.list_unlocked_skins,23) == -1)
			{
				script_execute(unlock_skin,23,"skin24");
			}
		}
		if(global.active_cat == 1)
		{
			if(ds_map_find_value(global.map_have_been,"Chal1Com") == 0)
			{
				ds_list_add(global.list_cat,"VERY WELL DONE,","HUMAN! FOR A HUMAN","AT LEAST. IT SEEMS ZEUS","HAS GRACIOUSLY SEEN FIT","TO GIVE YOU SOME","FREEDOM:","YOU MAY NOW EITHER","PLAY THROUGH THE","CHAPTER 1 LEVELS, OR","PROCEED ON TO THE","CHAPTER 2 ''CHALLENGE''.","","THE LEVELS ARE TIMED","TO ONE MINUTE,","CHALLENGING YOUR SPEED.");
				ds_list_add(global.list_cat,"COMPLETE EACH ONE","IN ORDER TO UNLOCK","THE NEXT ONE.","THE SECOND CHAPTER,","ON THE OTHER HAND,","WILL INTRODUCE A NEW","GAME FOIL. I WORRY YOU","AREN'T QUITE READY","FOR THAT.","BUT THE CHOICE IS","YOURS, TO DO AS YOU","PLEASE. AND DON'T FORGET","TO CHECK FOR NEWLY","UNLOCKED SKINS FROM","TIME TO TIME.");
				instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-109,obj_the_cat);
				ds_map_replace(global.map_have_been,"Chal1Com",1);
				ini_open("save.ini");
				ini_write_real("havebeen","chal1com",1);
				ini_close();
			}
		}
	}
	else if(global.currently_playing == 1)
	{
		if(global.currentlvl > 0 && global.currentlvl < 6)
		{
			if(global.currentlvl > global.lvlcomplete)
			{
				global.lvlcomplete++;
				ini_open("save.ini");
				ini_write_real("progress","level",global.lvlcomplete);
				ini_close();
				if(global.currentlvl < 5)
				{
					ds_list_add(global.list_unlocks,"4lvl_unlock");
				}
				else
				{
					ds_list_add(global.list_unlocks,"3skin_stone");
					if(ds_list_find_index(global.list_unlocked_skins,27) == -1)
					{
						script_execute(unlock_skin,27,"skin28");
					}
					if(achievement_available())
					{
						//Complete Collection Achiev
						achievement_increment("CgkIpuaHvKwHEAIQDg",1);
					}
				}
			}
		}
		else if(global.currentlvl > 5 && global.currentlvl < 16)
		{
			if(global.currentlvl - 5 > global.lvlcomplete2)
			{
				global.lvlcomplete2++;
				ini_open("save.ini");
				ini_write_real("progress","level2",global.lvlcomplete2);
				ini_close();
				if(global.currentlvl < 15)
				{
					ds_list_add(global.list_unlocks,"4lvl_unlock");
				}
				else
				{
					ds_list_add(global.list_unlocks,"3skin_elemist");
					if(ds_list_find_index(global.list_unlocked_skins,12) == -1)
					{
						script_execute(unlock_skin,12,"skin13");
					}
					if(achievement_available())
					{
						//Complete Collection Achiev
						achievement_increment("CgkIpuaHvKwHEAIQDg",1);
					}
				}
			}
		}
		else if(global.currentlvl > 15 && global.currentlvl < 31)
		{
			if(global.currentlvl - 15 > global.lvlcomplete3)
			{
				global.lvlcomplete3++;
				ini_open("save.ini");
				ini_write_real("progress","level3",global.lvlcomplete3);
				ini_close();
				if(global.currentlvl < 30)
				{
					ds_list_add(global.list_unlocks,"4lvl_unlock");
				}
				else
				{
					ds_list_add(global.list_unlocks,"3skin_frank");
					if(ds_list_find_index(global.list_unlocked_skins,15) == -1)
					{
						script_execute(unlock_skin,15,"skin16");
					}
					if(achievement_available())
					{
						//Complete Collection Achiev
						achievement_increment("CgkIpuaHvKwHEAIQDg",1);
					}
				}
			}
		}
		else if(global.currentlvl > 30 && global.currentlvl < 46)
		{
			if(global.currentlvl - 30 > global.lvlcomplete4)
			{
				global.lvlcomplete4++;
				ini_open("save.ini");
				ini_write_real("progress","level4",global.lvlcomplete4);
				ini_close();
				if(global.currentlvl < 45)
				{
					ds_list_add(global.list_unlocks,"4lvl_unlock");
				}
				else
				{
					ds_list_add(global.list_unlocks,"3skin_herc");
					if(ds_list_find_index(global.list_unlocked_skins,19) == -1)
					{
						script_execute(unlock_skin,19,"skin20");
					}
					if(achievement_available())
					{
						//Complete Collection Achiev
						achievement_increment("CgkIpuaHvKwHEAIQDg",1);
					}
				}
			}
		}
		global.currentlvl++;
		global.ad_pop -= 1;
		script_execute(medal_unlocks);
		if(global.gold_medals == 45)
		{
			global.gold_medals++;
			ini_open("save.ini");
			ini_write_real("achiev","goldmedals",global.gold_medals);
			ini_close();
			ds_list_add(global.list_unlocks,"3skin_zeus");
			if(ds_list_find_index(global.list_unlocked_skins,33) == -1)
			{
				script_execute(unlock_skin,33,"skin34");
			}
			if(achievement_available())
			{
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",1);
			}
		}
		if(global.time_remaining < 4 && global.last_breath == 0)
		{
			if(achievement_available())
			{
				//Last Breath Achiev
				achievement_post("CgkIpuaHvKwHEAIQDQ",100);
				global.last_breath = 1;
				ini_open("save.ini");
				ini_write_real("achiev","breath",1);
				ini_close();
			}
		}
	}
	else if(global.currently_playing == 3)
	{
		ds_list_add(global.list_unlocks,"5cpt_complete");
		if(ds_map_find_value(global.map_have_been,"tuComplete") == 0)
		{
			if(global.active_cat == 1)
			{
				ds_list_add(global.list_cat,"OH FRABJOUS DAY!","I DO BELIEVE YOU SHALL","HANDLE YOURSELF QUITE","WELL FROM HERE ON OUT,","AT LEAST UNTIL THAT","MANXOME CHAPTER 3.","FOR NOW, PROCEED TO","CHAPTER 1 AND TAP THE","''CHALLENGE'' BUTTON. OR","VISIT THE PROFILE PAGE","TO VIEW THE NEW SKIN","YOU UNLOCKED.");
				instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2 + 10,-109,obj_the_cat);
				ds_map_replace(global.map_have_been,"tuComplete",1);
			}
			ds_list_add(global.list_unlocks,"3skin_tu");
			ini_open("save.ini");
			ini_write_real("havebeen","tucomplete",1);
			ini_close();
			if(ds_list_find_index(global.list_unlocked_skins,32) == -1)
			{
				script_execute(unlock_skin,32,"skin33");
			}
			if(achievement_available())
			{
				//Just the Beginning
				achievement_post("CgkIpuaHvKwHEAIQCg",100);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",1);
			}
		}
	}
	else if(global.currently_playing == 4)
	{
		ds_list_add(global.list_unlocks,"5eod_complete");
		if(global.eod_complete == 0)
		{
			ds_list_add(global.list_unlocks,"3skin_eod","3skin_bg");
			global.eod_complete = 1;
			ds_list_add(global.list_bg_skins,1);
			ini_open("save.ini");
			ini_write_real("progress","eodcomplete",1);
			ini_write_real("haveskins","bgskin2",1);
			ini_close();
			if(ds_list_find_index(global.list_unlocked_skins,13) == -1)
			{
				script_execute(unlock_skin,13,"skin14");
			}
			if(achievement_available())
			{
				//Survivor of the End
				achievement_post("CgkIpuaHvKwHEAIQCw",100);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",1);
			}
			if(global.active_cat == 1)
			{
				ds_list_add(global.list_cat,"VERY WELL DONE","HUMAN! THANKS TO","YOUR EFFORTS, THE END","OF EVERYTHING HAS","BEEN AVERTED, AT","LEAST TEMPORARILY.");
				if(global.biz_complete == 0)
				{
					ds_list_add(global.list_cat,"IN ADDITION TO","UNLOCKING A NEW SKIN,","YOU’VE UNLOCKED A","GAME THEME, WHICH CAN","BE SELECTED IN THE","MAIN MENU.","A GAME THEME","ADJUSTS THE VISUALS","ON SELECT SCREENS, AND","WILL CHANGE THE IN-","GAME MUSIC TO","MATCH.");
				}
				instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-109,obj_the_cat);
			}
		}
	}
	else if(global.currently_playing == 5)
	{
		ds_list_add(global.list_unlocks,"5biz_complete");
		if(global.biz_complete == 0)
		{
			ds_list_add(global.list_unlocks,"3skin_biz","3skin_bg");
			global.biz_complete = 1;
			ds_list_add(global.list_bg_skins,2);
			ini_open("save.ini");
			ini_write_real("progress","dwcomplete",1);
			ini_write_real("haveskins","bgskin3",2);
			ini_close();
			if(ds_list_find_index(global.list_unlocked_skins,10) == -1)
			{
				script_execute(unlock_skin,10,"skin11");
			}
			if(achievement_available())
			{
				//Awake at Last
				achievement_post("CgkIpuaHvKwHEAIQDA",100);
				//Complete Collection Achiev
				achievement_increment("CgkIpuaHvKwHEAIQDg",1);
			}
			if(global.active_cat == 1)
			{
				ds_list_add(global.list_cat,"OH, THANK ZEUS WE","ARE DONE WITH THAT!","I'D SOON ENOUGH FACE","THE JABBERWOCKY AGAIN","BEFORE ENDURING","THAT NIGHTMARE!");
				if(global.eod_complete == 0)
				{
					ds_list_add(global.list_cat,"IN ADDITION TO","UNLOCKING A NEW SKIN,","YOU’VE UNLOCKED A","GAME THEME, WHICH CAN","BE SELECTED IN THE","MAIN MENU.","A GAME THEME","ADJUSTS THE VISUALS","ON SELECT SCREENS, AND","WILL CHANGE THE IN-","GAME MUSIC TO","MATCH.");
				}
				instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-109,obj_the_cat);
			}
		}
	}
	if(global.bruise == 5)
	{
		ds_list_add(global.list_unlocks,"3skin_bruise");
		global.bruise = 6;
		ini_open("save.ini");
		ini_write_real("achiev","bruise",6);
		ini_close();
		script_execute(unlock_skin,8,"skin9");
		if(achievement_available())
		{
			//Complete Collection Achiev
			achievement_increment("CgkIpuaHvKwHEAIQDg",1);
		}
	}
	else if(global.bruise < 5)
	{
		global.bruise = 0;
	}
}
else if(global.won == false)
{
	if(global.music == 1)
	{
		audio_play_sound(sd_defeat,2,1);
	}
	layer_background_blend(layer_background_get_id("Backgrounds_1"),c_black);
	if(global.currently_playing == 0)
	{
		ds_list_add(global.list_unlocks,"5lost_sphee");
	}
	else if(global.currently_playing == 1)
	{
		if(global.time_remaining == 0)
		{
			ds_list_add(global.list_unlocks,"5lost_time");
		}
		else
		{
			ds_list_add(global.list_unlocks,"5lost_sphee");
		}
	}
	else if(global.currently_playing == 2)
	{
		ds_list_add(global.list_unlocks,"5lost_sphee");
		if(global.endless_score > global.endmode_best)
		{
			global.endmode_best = global.endless_score;
			ini_open("save.ini");
			ini_write_real("achiev","endmodebest",global.endmode_best);
			ini_close();
			if(global.endmode_best >= 50 && global.endmode_5 == 0)
			{
				global.endmode_5 = 1;
				ds_list_add(global.list_unlocks,"3skin_ghost");
				ini_open("save.ini");
				ini_write_real("progress","endmode5",1);
				ini_close();
				if(ds_list_find_index(global.list_unlocked_skins,17) == -1)
				{
					script_execute(unlock_skin,17,"skin18");
				}
				if(achievement_available())
				{
					//Complete Collection Achiev
					achievement_increment("CgkIpuaHvKwHEAIQDg",1);
					//Endless Endurance Achiev
					achievement_increment("CgkIpuaHvKwHEAIQDw",1);
				}
			}
		}
		var time_current = global.time_seconds + global.time_remaining*60;
		var time_best = global.endmode_time_sec + global.endmode_time_min*60;
		if(time_current > time_best)
		{
			global.endmode_time_sec = global.time_seconds;
			global.endmode_time_min = global.time_remaining;
			ini_open("save.ini");
			ini_write_real("achiev","endmodetime_s",global.endmode_time_sec);
			ini_write_real("achiev","endmodetime_m",global.endmode_time_min);
			ini_close();
		}
	}
	else if(global.currently_playing == 4)
	{
		ds_list_add(global.list_unlocks,"5lost_sphee");
	}
	else if(global.currently_playing == 5)
	{
		ds_list_add(global.list_unlocks,"5lost_sphee");
	}
}
instance_destroy();