///@descr Endless Mode First Time
ds_list_add(global.list_cat,"HMM, NOW WHY DO","I HAVE A TEXT BUBBLE","HERE? I DO BELIEVE THE","TITLE EXPLAINS THINGS","CLEARLY ENOUGH.","GOOD LUCK THOUGH!");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"EndMode",1);
ini_open("save.ini");
ini_write_real("havebeen","endmode",1);
ini_close();
instance_destroy();