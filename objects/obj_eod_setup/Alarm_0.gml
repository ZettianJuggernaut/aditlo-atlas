///EoD First Time
ds_list_add(global.list_cat,"OH, HOW DREADFUL!","IT SEEMS THE GODS","HAVE FORSAKEN YOU","AND DEAR ATLAS. THESE","TRULY ARE THE END","OF DAYS...","IN THIS MINI GAME,","YOU\'LL NEED TO AID","ATLAS BY DESTROYING","THE FALLING METEORITES","WHILE MAINTAINING","SPHERE BALANCE.","EACH METEORITE HAS","A CRACK RUNNING THE","LENGTH OF IT; SIMPLY");
ds_list_add(global.list_cat,"MAKE A SLICE MOTION","ACROSS THE CRACK","TO DESTROY IT.","OH, AND I'VE BEEN","MADE AWARE THAT","THIS MINI GAME LASTS","FOR FIVE MINUTES,","SO HOLD IN THERE!");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"EoD",1);
ini_open("save.ini");
ini_write_real("achiev","unlockeod",1);
ini_close();
instance_destroy();