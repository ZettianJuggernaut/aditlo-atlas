var skin = obj_skin_large.image_index;
var p_map = ds_map_create();
var p_index = ds_map_find_value(iap_data, "index");
iap_purchase_details(p_index,p_map);
if(ds_map_find_value(p_map,"status") == iap_purchased)
{
	var save_skin = "skin" + string(skin);
	ds_list_delete(global.list_locked_skins,ds_list_find_index(global.list_locked_skins,skin));
	ds_list_delete(global.list_unlocked_skins,0);
	ds_list_add(global.list_unlocked_skins,skin);
	ini_open("save.ini");
	ini_write_real("haveskins",save_skin,skin);
	ini_close();
	if(skin == 4)
	{
		global.rabbit = 9;
		ini_open("save.ini");
		ini_write_real("achiev","rabbit",9);
		ini_close();
	}
	else if(skin == 8)
	{
		global.bruise = 6;
		ini_open("save.ini");
		ini_write_real("achiev","bruise",6);
		ini_close();
	}
	else if(skin == 24)
	{
		global.pixel = 1;
		ini_open("save.ini");
		ini_write_real("achiev","pixel",1);
		ini_close();
	}
	else if(skin == 28)
	{
		global.pineapple = 1;
		ini_open("save.ini");
		ini_write_real("achiev","pineapple",1);
		ini_close();
	}
	else if(skin == 29)
	{
		global.donut = 1;
		ini_open("save.ini");
		ini_write_real("achiev","donut",1);
		ini_close();
	}
	room_restart();
	iap_consume("alternate_skin");
	global.spent_d -= 1;
}
ds_map_destroy(p_map);