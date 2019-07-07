global.won = false;
global.scored = false;
global.open_chapter = 0;
global.grab_width=sprite_get_width(spr_drop)/2;
global.grab_height=sprite_get_height(spr_drop)/2;
global.slide_off=0;
global.combo = false;
global.first_blue = true;
global.fallspeed = 5;
global.remaining = 2;
global.ps_ghost=-1;
global.pt_ghost=-1;
global.current_skin = 0;
global.list_scored = ds_list_create();
global.list_swipes = ds_list_create();
global.list_token_frozen = ds_list_create();
global.list_glows = ds_list_create();
global.list_glinted = ds_list_create();
global.list_sequencing = ds_list_create();
global.list_drop_farleft = ds_list_create();
global.list_drop_left = ds_list_create();
global.list_drop_right = ds_list_create();
global.list_drop_farright = ds_list_create();
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
ds_list_add(global.list_sequencing,0,1,2,3,4,5,20,20,20,20);
ds_list_add(global.list_drop_farleft,1,1);
ds_list_add(global.list_drop_left,2,2);
ds_list_add(global.list_drop_right,3,3);
ds_list_add(global.list_drop_farright,4,4);
instance_create_depth(0,0,-20,obj_swipe_senor);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_track_cover)/2,-25,obj_track_cover);
instance_create_depth(obj_track_cover.x,obj_track_cover.y,-23,obj_track_color);
instance_create_depth(obj_track_cover.x,obj_track_cover.y,-24,obj_track_sphee_tutorial);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 100,-1,obj_ledge);
instance_create_depth(obj_ledge.x,obj_ledge.y,-3,obj_atlas);
instance_create_depth(obj_atlas.x + 7,obj_atlas.y - sprite_get_height(spr_atlas) - 3,-2,obj_sphee_tutorial);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + sprite_get_height(spr_hud)/2,-25,obj_hud_bar);
instance_create_depth(camera_get_view_x(view_camera[0]) + 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_tutorial);
instance_create_depth(camera_get_view_x(view_camera[0]) + 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_tutorial);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 60,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_tutorial);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 200,camera_get_view_y(view_camera[0]) - 40,0,obj_drop_spawn_tutorial);
instance_create_depth(obj_track_cover.x - 330,obj_track_cover.y,-26,obj_text_right);
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]) + sprite_get_height(spr_red_fade),-50,obj_red_fade_left);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(spr_red_fade),camera_get_view_y(view_camera[0]),-50,obj_red_fade_right);
repeat(4)
{
  instance_create_depth(random_range(camera_get_view_x(view_camera[0]) + 100,camera_get_view_width(view_camera[0])),random_range(camera_get_view_y(view_camera[0]) + 100,camera_get_view_height(view_camera[0])),5,obj_bg_fog);
}
global.current_music = sd_game_music;
if(global.music == 1)
{
	audio_play_sound(global.current_music,1,1);
	audio_sound_gain(global.current_music,0,1);
	audio_sound_gain(global.current_music,1,500);
}
alarm_set(0,20);