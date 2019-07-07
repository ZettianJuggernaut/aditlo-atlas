global.won = false;
global.open_chapter = 0;
global.time_remaining = 300;
global.swipe_angle = -1;
global.list_meteor_spawn = ds_list_create();
global.current_skin = 13;
__background_set( e__BG.Index, 0, bg_eod );
if(global.active_cat == 1)
{
	if(ds_map_find_value(global.map_have_been,"EoD") == 0)
	{
		alarm_set(0,25);
	}
}

//Particle System
global.ps_meteor = part_system_create();
part_system_depth(global.ps_meteor,0);
global.pt_meteor = part_type_create();
part_type_sprite(global.pt_meteor,spr_meteor_smoke,0,0,1);
part_type_alpha3(global.pt_meteor,0.7,0.9,0);
part_type_life(global.pt_meteor,30,50);
part_type_size(global.pt_meteor,0.6,1.2,0.005,0);

ds_list_add(global.list_meteor_spawn,choose(camera_get_view_x(view_camera[0]) + 100,camera_get_view_x(view_camera[0]) + 240,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 240));
instance_create_depth(0,0,-20,obj_eod_swipe_senor);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_track_cover)/2,-25,obj_track_cover);
instance_create_depth(obj_track_cover.x,obj_track_cover.y,-23,obj_track_color);
instance_create_depth(obj_cam.x,obj_cam.y,-150,obj_filter_eod);
instance_create_depth(obj_track_cover.x + 520,obj_track_cover.y,-27,obj_eod_timer_bar);
instance_create_depth(obj_track_cover.x + 519,obj_track_cover.y-1,-26,obj_timer_bar_outline);
repeat(2)
{
	instance_create_depth(0,camera_get_view_y(view_camera[0]) - 100,1,obj_meteor_spawn_mini);
}
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,-1,obj_ledge)
instance_create_depth(obj_ledge.x,obj_ledge.y,-3,obj_atlas);
instance_create_depth(obj_track_cover.x - 450,obj_track_cover.y,-26,obj_text_right);
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]) + sprite_get_height(spr_red_fade),-50,obj_red_fade_left);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]),-50,obj_red_fade_right);
repeat(4)
{
	instance_create_depth(random_range(camera_get_view_x(view_camera[0]) + 100,camera_get_view_width(view_camera[0])),random_range(camera_get_view_y(view_camera[0]) + 100,camera_get_view_height(view_camera[0])),5,obj_bg_fog);
}
global.current_music = sd_eod_music;
if(global.music == 1)
{
	audio_play_sound(global.current_music,1,1);
	audio_sound_gain(global.current_music,0,1);
	audio_sound_gain(global.current_music,1,500);
}
if(alarm_get(0) == -1)
{
	instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee);
	instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee);
	instance_create_depth(camera_get_view_x(view_camera[0]) + 100,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
	instance_create_depth(camera_get_view_x(view_camera[0]) + 240,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 240,camera_get_view_y(view_camera[0]) - 40,1,obj_spawn_meteor);
	with(obj_eod_timer_bar)
	{
		alarm_set(0,60);
	}
	instance_destroy();
}
else
{
	instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee_dummy);
	instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee_dummy);
}