/// @description Fade In
image_alpha += 0.05;
if(image_alpha != 1)
{
	alarm_set(0,1);
}
else if(image_alpha == 1)
{
	if(instance_exists(obj_cat_retalk))
	{
		with(obj_cat_retalk)
		{
			instance_destroy();
		}
		if(global.currently_playing == 1)
		{
			//Clear Up
			global.currentlvl = -1;
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
			if(global.music == 1)
			{
				audio_stop_sound(sd_game_music);
				audio_stop_sound(sd_eod_music);
			}
			//Change To Dream World
			global.currently_playing = 5;
			global.goto_room = rm_game_modes;
			instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black);
			instance_create_depth(obj_cam.x,obj_cam.y,-201,obj_color_flash);
		}
	}
	if(global.currently_playing != 1)
	{
		instance_create_depth(x + sprite_get_width(spr_cat)/2,y + sprite_get_height(spr_cat)/3,depth-1,obj_speak_bubble);
	}
}