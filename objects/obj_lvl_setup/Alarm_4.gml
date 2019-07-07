///@descr Dream World First Time
ds_list_add(global.list_cat,"I... OH, OH DEAR,","THIS IS RATHER","DISORIENTING, ISN'T IT?","YOU THINK IT'S TROUBLING","FOR YOU? IMAGINE BEING","THE ONE IN HERE!","AHEM... TAKE A","DEEP BREATH... WHEH!","ANYWAYS, I DO BELIEVE","THE GOAL OF THIS MINI","GAME IS MORE OR LESS","THE SAME AS USUAL.","SIMPLY SCORE THE","TOKENS AS SHOWN ON","YOUR HUD BAR AT THE");
ds_list_add(global.list_cat,"TOP--UH, I MEAN","BOTTOM--OF YOUR","SCREEN.","AS USUAL, KEEP AN","EYE ON THE SPHERE","AND WATCH OUT FOR","THOSE NASTY, VILE","CREATURES THAT ARE","OUT FOR ATLAS.","GOOD LUCK,","HUMAN. I'M GOING","TO... I'LL JUST...","WELL, I'LL BE SOMEWHERE","THAT CERTAINLY ISN'T","HERE. GOODBYE!");
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,-109,obj_the_cat);
ds_map_replace(global.map_have_been,"BizarroWorld",1);
global.dream_world = 4;
ini_open("save.ini");
ini_write_real("achiev","unlockdreamworld",4);
ini_write_real("havebeen","bizarroworld",1);
ini_close();
instance_destroy();