ds_list_delete(global.list_locked_skins,ds_list_find_index(global.list_locked_skins,argument0));
ds_list_delete(global.list_unlocked_skins,ds_list_find_index(global.list_unlocked_skins,-1));
ds_list_add(global.list_unlocked_skins,argument0);
ini_open("save.ini");
ini_write_real("haveskins",argument1,argument0);
ini_close();