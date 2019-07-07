/// @descr Chapter 2 First Time
ds_list_add(global.list_cat,"I FEAR THINGS ARE","GETTING RATHER","INTENSE NOW, HUMAN.","THE ELEMENTS THEMSELVES","SEEM TO BE OUT TO GET","YOU.","THE CURRENT TARGET","TOKEN, SHOWN ON YOUR","HUD, IS NOW ALSO A","CATALYST FOR SOME","RATHER NASTY","EFFECTS.","A BLACK TOKEN","CAUSES NIGHT TO","DESCEND, OBSCURING");
ds_list_add(global.list_cat,"YOUR VIEW.","","","A WHITE TOKEN","SUMMONS A STRONG","WIND, CAUSING THE","SPHERE TO TILT RATHER","UNPLEASANTLY.","","A YELLOW TOKEN","CONJURES AN INTENSE","BEAM OF SUNLIGHT","THAT IS RATHER PAINFUL","TO THE EYES.","");
ds_list_add(global.list_cat,"A BLUE TOKEN","CALLS DOWN A HEAVY","RAINSTORM, MAKING THE","TOKENS SLIPPERY AND","HARD TO GRASP.","","A GREEN TOKEN","WILL CAUSE UNNATURAL","VINES TO GROW ON YOUR","SCREEN, HIDING TOKENS","BEHIND IT.","","LASTLY, A RED TOKEN","WILL TRIGGER A","SPONTANEOUS COMBUSTION");
ds_list_add(global.list_cat,"IN THE TOKENS ON SCREEN","IF YOU SWIPE INCORRECTLY","WHEN DRAWING.","GOOD LUCK, DEAR","HUMAN. I DO BELIEVE","YOU\'LL NEED ALL THE","LUCK YOU CAN GET.");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"Challenge2",1);
ini_open("save.ini");
ini_write_real("havebeen","challenge2",1);
ini_close();
instance_destroy();