ds_list_clear(global.list_cat);
global.helper_text_line1 = "";
global.helper_text_line2 = "";
global.helper_text_line3 = "";
global.helper_text_line4 = "";
global.helper_text_line5 = "";
global.helper_text_line6 = "";
ds_list_add(global.list_cat,"HERE WE ARE, THE","BASICS OF THE GAME.","DO GET USED TO THE","VIEW... POOR ATLAS","CERTAINLY HAS.","","TO GET YOU STARTED","I\'VE DISABLED THE","BALANCING CAPABILITIES OF","YOUR DEVICE; I\'LL RETURN","THAT TO YOU LATER.","","UP AT THE TOP OF","YOUR SCREEN IS THE");
ds_list_add(global.list_cat,"IMPORTANT BIT: THIS SHOWS","YOUR CURRENT TARGET","AND UPCOMING","TARGETS.");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
instance_destroy();