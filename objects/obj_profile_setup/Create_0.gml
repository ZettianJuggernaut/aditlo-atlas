ds_list_sort(global.list_unlocked_skins,1);
ds_list_sort(global.list_locked_skins,1);
global.skin_setup = ds_list_find_index(global.list_unlocked_skins,0);
global.locked_skin = 0;
var spawn_x = 175;
repeat(34)
{
	instance_create_depth(spawn_x,206,-10,obj_selector_skin);
	spawn_x += 115;
}
instance_create_layer(213,533,"instances",obj_skin_large);
instance_create_layer(1240,370,"instances",obj_button_switch);
instance_create_layer(1240,480,"instances",obj_button_switch);
instance_create_layer(1240,590,"instances",obj_button_switch);
instance_create_layer(1240,700,"instances",obj_button_switch);
instance_create_depth(213,711,-13,obj_scroll_mini);
instance_create_depth(214,712,-14,obj_button_select);

//Cat
if(global.active_cat == 1)
{
	if(ds_map_find_value(global.map_have_been,"Profile") == 0)
	{
		if(ds_map_find_value(global.map_have_been,"ChapSelect") == 0)
		{
			ds_list_add(global.list_cat,"HMM, I DO BELIEVE","YOU'RE HARD OF HEARING.","OH WELL.","","","");
		}
		ds_list_add(global.list_cat,"THIS IS THE PROFILE","PAGE, WHERE YOU MAY","ADJUST THE GAME TO YOUR","PREFERENCES, SUCH AS","THE OPTIONS PANEL","TO THE RIGHT.","THAT BAR THERE IS","THE SKIN SELECTOR, IN","CASE YOU GROW TIRED OF","POOR ATLAS. OF COURSE,","MOST OF THEM ARE","CURRENTLY LOCKED.","TO UNLOCK NEW SKINS,","YOU'LL NEED TO PLAY","THROUGH MORE OF THE");
		ds_list_add(global.list_cat,"GAME, OR WASTE YOUR","MONEY PURCHASING","THEM NOW.","OH DEAR ME! I DO","BELIEVE I WAS SUPPOSED","TO ADVERTISE THE","PURCHASING FEATURE. YOU","WON'T TELL ON ME,","WILL YOU?","DRAG ON THE BAR TO","PAN THROUGH THE SKINS,","AND TAP THEM TO","DISPLAY THEIR DETAILS IN","THE BOTTOM LEFT","CORNER.");
		instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-100,obj_the_cat);
		ds_map_replace(global.map_have_been,"Profile",1);
		ini_open("save.ini");
		ini_write_real("havebeen","profile",1);
		ini_close();
	}
}