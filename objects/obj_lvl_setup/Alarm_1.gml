///@descr Chapter 3 First Time
ds_list_add(global.list_cat,"OH DEAR, OH DEAR!","ZEUS MUST TRULY BE IN","A TERRIBLE MOOD. I'D LIKE","TO OFFER MY PREEMPTIVE","CONDOLENCES FOR THE","TRIALS AHEAD.","IT SEEMS MANY TARGET","TOKENS HAVE FUSED INTO","UNNATURAL COMBINATIONS.","TO COMPLETE THESE, YOU","MUST ACTIVATE BOTH OF","THOSE COLORS.","THEN, WITH A TOKEN","OF EACH COLOR ACTIVE","SIMULTANEOUSLY, YOU");
ds_list_add(global.list_cat,"MUST COMPLETE A RATHER","COMPLEX SWIPE","SEQUENCE.","IF YOU HAVEN'T YET","FIGURED IT OUT, A","CRUCIAL TECHNIQUE TO","SUCCEEDING IS YOUR","ABILITY TO GRAB AND","HOLD TOKENS.","IN DOING SO, YOU","WILL PREVENT THAT","TOKEN FROM CRACKING","UNTIL YOU RELEASE IT,","ALLOWING YOU TO","HOLD IT LONGER.");
ds_list_add(global.list_cat,"THIS TECHNIQUE IS","VITAL TO TIMING BOTH","TOKEN ACTIVATIONS IN","ORDER TO COMPLETE","A COMBINATION","TARGET.");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"Challenge3",1);
ini_open("save.ini");
ini_write_real("havebeen","challenge3",1);
ini_close();
instance_destroy();