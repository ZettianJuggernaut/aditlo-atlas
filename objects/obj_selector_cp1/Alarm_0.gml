if(global.active_cat == 1)
{
	if(ds_map_find_value(global.map_have_been,"Chap1open") == 0 && ds_map_find_value(global.map_have_been,"tucomplete") == 0)
	{
		ds_list_add(global.list_cat,"WELL THEN, A CAT","ALWAYS KNOWS WHEN","ITS PRESENCE ISN'T","DESIRED.","","","GO ON, TAP THAT","''CHALLENGE'' BUTTON IF","YOU LIKE, AND I SHALL","LEAVE YOU TO YOUR","OWN DEVICES.");
		instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 + 10,-100,obj_the_cat);
		ds_map_replace(global.map_have_been,"Chap1open",1);
		ini_open("save.ini");
		ini_write_real("havebeen","chap1open",1);
		ini_close();
	}
}