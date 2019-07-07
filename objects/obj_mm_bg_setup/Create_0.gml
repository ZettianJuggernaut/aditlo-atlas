instance_create_depth(camera_get_view_x(view_camera[0]) + 60,camera_get_view_y(view_camera[0]) - sprite_get_height(spr_button_google),-10,obj_button_google);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-9,obj_scroll);
instance_create_depth(obj_scroll.x,obj_scroll.y - 180,-10,obj_button_play);
instance_create_depth(obj_scroll.x,obj_scroll.y - 60,-10,obj_button_profile);
instance_create_depth(obj_scroll.x,obj_scroll.y + 60,-10,obj_button_achiev);
instance_create_depth(obj_scroll.x,obj_scroll.y + 180,-10,obj_button_about);
instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 190,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + sprite_get_height(spr_selector_bg_box)/2,-10,obj_selector_bg_box);
repeat(2)
{
  instance_create_depth(0,camera_get_view_y(view_camera[0]) - 75,-6,obj_menu_effect_spawn);
}
if(ds_map_find_value(global.map_have_been,"MainMenu") == 0)
{
	ds_list_add(global.list_cat,"OH, HELLO, YOU MUST","BE NEW HERE. I DO","SUPPOSE YOU CAME TO","PLAY? OR PERHAPS YOU","TAPPED THE WRONG","THING?","THESE NEWFANGLED","DEVICES ARE FICKLE, ARE","THEY NOT? SINCE YOU'RE","HERE, I DON'T SUPPOSE IT","MATTERS MUCH HOW YOU","GOT HERE, DOES IT?","FOLLOW ME PLEASE,","SIMPLY TAP THAT 'PLAY'","BUTTON UP THERE.");
	instance_create_depth(camera_get_view_x(view_camera[0]) - sprite_get_width(spr_cat_bar)/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-100,obj_cat_bar);
	ds_map_replace(global.map_have_been,"MainMenu",1);
	ini_open("save.ini");
	ini_write_real("havebeen","mainmenu",1);
	ini_close();
}
else
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + 170,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + sprite_get_height(spr_ad_box),-10,obj_ad_box);
}
if(global.music == 1 && !audio_is_playing(sd_menu_music))
{
	audio_play_sound(sd_menu_music,1,1);
}
if(global.current_bg_skin == 1)
{
	instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-99,obj_filter_eod);
  
	//Particle System
	global.ps_meteor = part_system_create();
	part_system_depth(global.ps_meteor,-7);
	global.pt_meteor = part_type_create();
	part_type_sprite(global.pt_meteor,spr_meteor_smoke,0,0,1);
	part_type_alpha3(global.pt_meteor,0.7,0.9,0);
	part_type_life(global.pt_meteor,30,50);
	part_type_size(global.pt_meteor,0.6,1.2,0.005,0);
}
else if(global.current_bg_skin == 2)
{
  instance_create_depth(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,-99,obj_filter_biz);
}
var bg_1 = layer_create(100);
var bg_2 = layer_create(100);
var bg_3 = layer_create(100);
layer_hspeed(bg_1,-1);
layer_hspeed(bg_2,-1);
layer_hspeed(bg_3,-1);
global.mm_bg_1 = layer_sprite_create(bg_1,0,0,spr_menu_main_pt1);
global.mm_bg_2 =layer_sprite_create(bg_2,1231,0,spr_menu_main_pt2);
global.mm_bg_3 =layer_sprite_create(bg_3,2462,0,spr_menu_main_pt3);
alarm_set(0,1226);