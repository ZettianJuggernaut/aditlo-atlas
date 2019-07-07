///@descr Set-Up

//Globals
global.won = false;
global.scored = false;
global.open_chapter = 0;
global.windspeed = 0;
global.grab_width=sprite_get_width(spr_drop)/2;
global.grab_height=sprite_get_height(spr_drop)/2;
global.burn=false;
global.darkness_stop=false;
global.combo=false;
global.ps_ghost=-1;
global.pt_ghost=-1;
global.list_scored = ds_list_create();
global.list_swipes = ds_list_create();
global.list_token_frozen = ds_list_create();
global.list_glows = ds_list_create();
global.list_sequencing = ds_list_create();
global.list_drop_farleft = ds_list_create();
global.list_drop_left = ds_list_create();
global.list_drop_right = ds_list_create();
global.list_drop_farright = ds_list_create();
if(global.bruise < 5)
{
	global.bruise = 0;
}
instance_create_depth(0,0,-20,obj_swipe_senor);
global.list_token_black = ds_list_create();
ds_list_add(global.list_token_black,0,6,7,8,9);
global.list_token_blue = ds_list_create();
ds_list_add(global.list_token_blue,1,6,10,11,12,16);
global.list_token_green = ds_list_create();
ds_list_add(global.list_token_green,2,7,10,13,14,17);
global.list_token_red = ds_list_create();
ds_list_add(global.list_token_red,3,8,11,14,15,18);
global.list_token_white = ds_list_create();
ds_list_add(global.list_token_white,4,9,12,13,15,19);
global.list_token_yellow = ds_list_create();
ds_list_add(global.list_token_yellow,5,16,17,18,19);

//Track Placement
if(global.currently_playing < 5)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_track_cover)/2,-25,obj_track_cover);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,-1,obj_ledge);
}
else if(global.currently_playing == 5)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + sprite_get_height(spr_track_cover)/2,-25,obj_track_cover);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 150,-1,obj_ledge);
	global.invert_tilt = 1;
	global.current_skin = 10;
}
//Sequencing
if(global.currently_playing == 0)
{
	if(global.current_cp <= 1)
	{
		repeat(25)
		{
			ds_list_add(global.list_sequencing,irandom(5));
		}
		repeat(10)
		{
			ds_list_add(global.list_drop_farleft,irandom(5));
			ds_list_add(global.list_drop_left,irandom(5));
			ds_list_add(global.list_drop_right,irandom(5));
			ds_list_add(global.list_drop_farright,irandom(5));
		}
		if(global.active_cat == 1)
		{
			if(global.current_cp == 1)
			{
				if(ds_map_find_value(global.map_have_been,"Challenge2") == 0)
				{
					alarm_set(0,25);
				}
			}
		}
	}
	else if(global.current_cp == 2)
	{
		repeat(25)
		{
			ds_list_add(global.list_sequencing,irandom(19));
		}
		repeat(10)
		{
			ds_list_add(global.list_drop_farleft,irandom(5));
			ds_list_add(global.list_drop_left,irandom(5));
			ds_list_add(global.list_drop_right,irandom(5));
			ds_list_add(global.list_drop_farright,irandom(5));
		}
		if(global.active_cat == 1)
		{
			if(ds_map_find_value(global.map_have_been,"Challenge3") == 0)
			{
				alarm_set(1,25);
			}
		}
	}
	else if(global.current_cp >= 3)
	{
		repeat(25)
		{
			ds_list_add(global.list_sequencing,irandom(19));
		}
		repeat(5)
		{
			if(ds_list_find_index(global.list_drop_farleft,6) == -1)
			{
				ds_list_add(global.list_drop_farleft,irandom(6));
			}
			else
			{
				ds_list_add(global.list_drop_farleft,irandom(5));
			}
			if(ds_list_find_index(global.list_drop_left,6) == -1)
			{
				ds_list_add(global.list_drop_left,irandom(6));
			}
			else
			{
				ds_list_add(global.list_drop_left,irandom(5));
			}
			if(ds_list_find_index(global.list_drop_right,6) == -1)
			{
				ds_list_add(global.list_drop_right,irandom(6));
			}
			else
			{
				ds_list_add(global.list_drop_right,irandom(5));
			}
			if(ds_list_find_index(global.list_drop_farright,6) == -1)
			{
				ds_list_add(global.list_drop_farright,irandom(6));
			}
			else
			{
				ds_list_add(global.list_drop_farright,irandom(5));
			}
		}
		if(global.active_cat == 1)
		{
			if(global.current_cp == 3)
			{
				if(ds_map_find_value(global.map_have_been,"Challenge4") == 0)
				{
					alarm_set(2,25);
				}
			}
		}
	}
	global.remaining = ds_list_size(global.list_sequencing) - 4;
	ds_list_add(global.list_sequencing,20,20,20,20);
	instance_create_depth(obj_track_cover.x - 505,obj_track_cover.y,-27,obj_text_left);
	instance_create_depth(obj_track_cover.x - 300,obj_track_cover.y,-27,obj_text_right);
	if(global.current_bg_skin == 0)
	{
		global.current_music = sd_game_music;
	}
	else if(global.current_bg_skin == 1)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_eod);
		global.current_music = sd_eod_music;
	}
	else if(global.current_bg_skin == 2)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_biz);
		global.current_music = sd_dw_music;
	}
}
else if(global.currently_playing == 1)
{
	instance_create_depth(obj_track_cover.x + 519,obj_track_cover.y-1,-26,obj_timer_bar_outline);
	instance_create_depth(obj_track_cover.x + 520,obj_track_cover.y,-27,obj_timer_bar);
	instance_create_depth(obj_track_cover.x - 505,obj_track_cover.y,-27,obj_text_left);
	instance_create_depth(obj_track_cover.x - 300,obj_track_cover.y,-27,obj_text_right);
	script_execute(level_sequencing);
	global.time_remaining = 60;
	global.remaining = ds_list_size(global.list_sequencing) - 4;
	if(global.remaining < 0)
	{
		global.remaining = 0;
	}
	ds_list_add(global.list_sequencing,20,20,20,20);
	if(global.current_bg_skin == 0)
	{
		global.current_music = sd_game_music;
	}
	else if(global.current_bg_skin == 1)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_eod);
		global.current_music = sd_eod_music;
	}
	else if(global.current_bg_skin == 2)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_biz);
		global.current_music = sd_dw_music;
	}
}
else if(global.currently_playing == 2)
{
	global.endless_score=0;
	global.time_remaining=0;
	global.time_seconds=0;
	instance_create_depth(obj_track_cover.x + 350,obj_track_cover.y,-27,obj_endmode_time);
	instance_create_depth(obj_track_cover.x + 490,obj_track_cover.y,-26,obj_text_score);
	instance_create_depth(obj_track_cover.x - 450,obj_track_cover.y,-27,obj_text_right);
	repeat(10)
	{
		ds_list_add(global.list_sequencing,irandom(19));
	}
	repeat(5)
	{
		if(ds_list_find_index(global.list_drop_farleft,6) == -1)
		{
			ds_list_add(global.list_drop_farleft,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_farleft,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_left,6) == -1)
		{
			ds_list_add(global.list_drop_left,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_left,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_right,6) == -1)
		{
			ds_list_add(global.list_drop_right,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_right,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_farright,6) == -1)
		{
			ds_list_add(global.list_drop_farright,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_farright,irandom(5));
		}
	}
	global.remaining = 0;
	if(global.active_cat == 1)
	{
		if(ds_map_find_value(global.map_have_been,"EndMode") == 0)
		{
			alarm_set(3,25);
		}
	}
	if(global.current_bg_skin == 0)
	{
		global.current_music = sd_game_music;
	}
	else if(global.current_bg_skin == 1)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_eod);
		global.current_music = sd_eod_music;
	}
	else if(global.current_bg_skin == 2)
	{
		instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_biz);
		global.current_music = sd_dw_music;
	}
}
else if(global.currently_playing == 5)
{
	if(global.active_cat == 1)
	{
		if(ds_map_find_value(global.map_have_been,"BizarroWorld") == 0)
		{
			alarm_set(4,25);
			with(instance_create_depth(obj_cam.x,obj_cam.y,-201,obj_color_flash))
			{
				image_xscale = 2;
				image_yscale = 2;
			}
		}
	}
	repeat(25)
	{
		ds_list_add(global.list_sequencing,irandom(19));
	}
	repeat(5)
	{
		if(ds_list_find_index(global.list_drop_farleft,6) == -1)
		{
			ds_list_add(global.list_drop_farleft,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_farleft,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_left,6) == -1)
		{
			ds_list_add(global.list_drop_left,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_left,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_right,6) == -1)
		{
			ds_list_add(global.list_drop_right,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_right,irandom(5));
		}
		if(ds_list_find_index(global.list_drop_farright,6) == -1)
		{
			ds_list_add(global.list_drop_farright,irandom(6));
		}
		else
		{
			ds_list_add(global.list_drop_farright,irandom(5));
		}
	}
	global.remaining = ds_list_size(global.list_sequencing) - 4;
	ds_list_add(global.list_sequencing,20,20,20,20);
	instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_biz);
	global.current_music = sd_dw_music;
	instance_create_depth(obj_track_cover.x - 450,obj_track_cover.y,-27,obj_text_right);
}
global.fallspeed = 5;
instance_create_depth(obj_ledge.x,obj_ledge.y,-3,obj_atlas);
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]) + sprite_get_height(spr_red_fade),-101,obj_red_fade_left);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]),-101,obj_red_fade_right);
instance_create_depth(obj_track_cover.x,obj_track_cover.y,-23,obj_track_color);
repeat(4)
{
  instance_create_depth(random_range(camera_get_view_x(view_camera[0]) + 100,camera_get_view_width(view_camera[0])),random_range(camera_get_view_y(view_camera[0]) + 100,camera_get_view_height(view_camera[0])),5,obj_bg_fog);
}
__background_set( e__BG.Index, 0, bg_montains );
if(global.music == 1)
{
	audio_play_sound(global.current_music,1,1);
	audio_sound_gain(global.current_music,0,1);
	audio_sound_gain(global.current_music,1,500);
}
if(global.currently_playing != 1)
{
	if(alarm_get(0) == -1 && alarm_get(1) == -1 && alarm_get(2) == -1 && alarm_get(3) == -1 && alarm_get(4) == -1) {
		instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee);
		if(global.currently_playing < 5) {
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + sprite_get_height(spr_hud)/2,-25,obj_hud_bar);
			var spawn_y = camera_get_view_y(view_camera[0]) - 40;
			instance_create_depth(camera_get_view_x(view_camera[0]) + 60,spawn_y,0,obj_drop_spawn);
			instance_create_depth(camera_get_view_x(view_camera[0]) + 200,spawn_y,0,obj_drop_spawn);
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60,spawn_y,0,obj_drop_spawn);
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200,spawn_y,0,obj_drop_spawn);
		}
		else if(global.currently_playing == 5)
		{
			with(instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_hud)/2,-25,obj_hud_bar))
			{
				image_yscale = -1;
			}
			instance_create_depth(0,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_biz);
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 40,0,0,obj_drop_spawn_biz);
			instance_create_depth(0,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 40,0,obj_drop_spawn_biz);
			instance_create_depth(camera_get_view_x(view_camera[0]) - 40,0,0,obj_drop_spawn_biz);
		}
		instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee);
		instance_destroy();
	}
	else
	{
		if(global.currently_playing < 5)
		{
			instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + sprite_get_height(spr_hud)/2,-25,obj_hud_bar);
		}
		else if(global.currently_playing == 5)
		{
			with(instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_hud)/2,-25,obj_hud_bar))
			{
				image_yscale = -1;
			}
		}
		instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee_dummy);
		instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee_dummy);
	}
}
else if(global.currently_playing == 1)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + sprite_get_height(spr_hud)/2,-25,obj_hud_bar);
	if(global.ad_pop < 1)
	{
		instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee_dummy);
		instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee_dummy);
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0]),-200,obj_popup_ad);
		global.ad_pop = 5;
	}
	else
	{
		instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee);
		instance_create_depth(camera_get_view_x(view_camera[0]) + 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
		instance_create_depth(camera_get_view_x(view_camera[0]) + 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
		instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn);
		instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee);
	}
	instance_destroy();
}