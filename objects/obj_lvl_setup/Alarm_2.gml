///@descr Chapter 4 First Time
ds_list_add(global.list_cat,"OH, THIS IS SIMPLY","DREADFUL NOW! THE","FORCES OF EVIL HAVE","SENT CHAOTIC MINIONS","TO ASSAULT DEAR","POOR ATLAS!","YOU MUST PROTECT","ATLAS AT ALL COSTS.","DOUBLE TAP ON THESE","WRETCHED CREATURES","TO DISPEL THEM.","","DON\'T LET THEM","GET TO ATLAS! DON\'T","LET THE SPHERE DROP!");
ds_list_add(global.list_cat,"AND REMEMBER, YOU","MUST STILL COMPLETE","THE SEQUENCES!");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"Challenge4",1);
ini_open("save.ini");
ini_write_real("havebeen","challenge4",1);
ini_close();
instance_destroy();