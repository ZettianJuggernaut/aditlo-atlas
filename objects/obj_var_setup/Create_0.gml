///Set-Up

//Saved Global Set-Up
global.map_lvl_success = ds_map_create();
global.map_achiev = ds_map_create();
global.map_have_been = ds_map_create();
global.list_unlocked_skins = ds_list_create();
global.list_bg_skins = ds_list_create();
ini_open("save.ini");
global.lvlcomplete = ini_read_real("progress","level",-1);
global.lvlcomplete2 = ini_read_real("progress","level2",-1);
global.lvlcomplete3 = ini_read_real("progress","level3",-1);
global.lvlcomplete4 = ini_read_real("progress","level4",-1);
global.farrest_cp =  ini_read_real("progress","checkpoint",0);
global.eod_complete = ini_read_real("progress","eodcomplete",0);
global.biz_complete = ini_read_real("progress","bizcomplete",0);
ds_map_add(global.map_lvl_success,"lvl1",ini_read_real("progress","lvl1s",0));
ds_map_add(global.map_lvl_success,"lvl2",ini_read_real("progress","lvl2s",0));
ds_map_add(global.map_lvl_success,"lvl3",ini_read_real("progress","lvl3s",0));
ds_map_add(global.map_lvl_success,"lvl4",ini_read_real("progress","lvl4s",0));
ds_map_add(global.map_lvl_success,"lvl5",ini_read_real("progress","lvl5s",0));
ds_map_add(global.map_lvl_success,"lvl6",ini_read_real("progress","lvl6s",0));
ds_map_add(global.map_lvl_success,"lvl7",ini_read_real("progress","lvl7s",0));
ds_map_add(global.map_lvl_success,"lvl8",ini_read_real("progress","lvl8s",0));
ds_map_add(global.map_lvl_success,"lvl9",ini_read_real("progress","lvl9s",0));
ds_map_add(global.map_lvl_success,"lvl10",ini_read_real("progress","lvl10s",0));
ds_map_add(global.map_lvl_success,"lvl11",ini_read_real("progress","lvl11s",0));
ds_map_add(global.map_lvl_success,"lvl12",ini_read_real("progress","lvl12s",0));
ds_map_add(global.map_lvl_success,"lvl13",ini_read_real("progress","lvl13s",0));
ds_map_add(global.map_lvl_success,"lvl14",ini_read_real("progress","lvl14s",0));
ds_map_add(global.map_lvl_success,"lvl15",ini_read_real("progress","lvl15s",0));
ds_map_add(global.map_lvl_success,"lvl16",ini_read_real("progress","lvl16s",0));
ds_map_add(global.map_lvl_success,"lvl17",ini_read_real("progress","lvl17s",0));
ds_map_add(global.map_lvl_success,"lvl18",ini_read_real("progress","lvl18s",0));
ds_map_add(global.map_lvl_success,"lvl19",ini_read_real("progress","lvl19s",0));
ds_map_add(global.map_lvl_success,"lvl20",ini_read_real("progress","lvl20s",0));
ds_map_add(global.map_lvl_success,"lvl21",ini_read_real("progress","lvl21s",0));
ds_map_add(global.map_lvl_success,"lvl22",ini_read_real("progress","lvl22s",0));
ds_map_add(global.map_lvl_success,"lvl23",ini_read_real("progress","lvl23s",0));
ds_map_add(global.map_lvl_success,"lvl24",ini_read_real("progress","lvl24s",0));
ds_map_add(global.map_lvl_success,"lvl25",ini_read_real("progress","lvl25s",0));
ds_map_add(global.map_lvl_success,"lvl26",ini_read_real("progress","lvl26s",0));
ds_map_add(global.map_lvl_success,"lvl27",ini_read_real("progress","lvl27s",0));
ds_map_add(global.map_lvl_success,"lvl28",ini_read_real("progress","lvl28s",0));
ds_map_add(global.map_lvl_success,"lvl29",ini_read_real("progress","lvl29s",0));
ds_map_add(global.map_lvl_success,"lvl30",ini_read_real("progress","lvl30s",0));
ds_map_add(global.map_lvl_success,"lvl31",ini_read_real("progress","lvl31s",0));
ds_map_add(global.map_lvl_success,"lvl32",ini_read_real("progress","lvl32s",0));
ds_map_add(global.map_lvl_success,"lvl33",ini_read_real("progress","lvl33s",0));
ds_map_add(global.map_lvl_success,"lvl34",ini_read_real("progress","lvl34s",0));
ds_map_add(global.map_lvl_success,"lvl35",ini_read_real("progress","lvl35s",0));
ds_map_add(global.map_lvl_success,"lvl36",ini_read_real("progress","lvl36s",0));
ds_map_add(global.map_lvl_success,"lvl37",ini_read_real("progress","lvl37s",0));
ds_map_add(global.map_lvl_success,"lvl38",ini_read_real("progress","lvl38s",0));
ds_map_add(global.map_lvl_success,"lvl39",ini_read_real("progress","lvl39s",0));
ds_map_add(global.map_lvl_success,"lvl40",ini_read_real("progress","lvl40s",0));
ds_map_add(global.map_lvl_success,"lvl41",ini_read_real("progress","lvl41s",0));
ds_map_add(global.map_lvl_success,"lvl42",ini_read_real("progress","lvl42s",0));
ds_map_add(global.map_lvl_success,"lvl43",ini_read_real("progress","lvl43s",0));
ds_map_add(global.map_lvl_success,"lvl44",ini_read_real("progress","lvl44s",0));
ds_map_add(global.map_lvl_success,"lvl45",ini_read_real("progress","lvl45s",0));
ds_map_add(global.map_achiev,"challengescomplete",ini_read_real("achiev","challaengescomplete",0));
ds_map_add(global.map_achiev,"levelsgold",ini_read_real("achiev","levelsgold",0));
ds_map_add(global.map_have_been,"MainMenu",ini_read_real("havebeen","mainmenu",0));
ds_map_add(global.map_have_been,"Profile",ini_read_real("havebeen","profile",0));
ds_map_add(global.map_have_been,"ChapSelect",ini_read_real("havebeen","chapselect",0));
ds_map_add(global.map_have_been,"Chap1open",ini_read_real("havebeen","chap1open",0));
ds_map_add(global.map_have_been,"Chap0",ini_read_real("havebeen","chap0",0));
ds_map_add(global.map_have_been,"Chap0open",ini_read_real("havebeen","chap0open",0));
ds_map_add(global.map_have_been,"Chap2",ini_read_real("havebeen","chap2",0));
ds_map_add(global.map_have_been,"Challenge2",ini_read_real("havebeen","challenge2",0));
ds_map_add(global.map_have_been,"Challenge3",ini_read_real("havebeen","challenge3",0));
ds_map_add(global.map_have_been,"Challenge4",ini_read_real("havebeen","challenge4",0));
ds_map_add(global.map_have_been,"Chal1Com",ini_read_real("havebeen","chal1com",0));
ds_map_add(global.map_have_been,"tuComplete",ini_read_real("havebeen","tucomplete",0));
ds_map_add(global.map_have_been,"EndMode",ini_read_real("havebeen","endmode",0));
ds_map_add(global.map_have_been,"EoD",ini_read_real("havebeen","eod",0));
ds_map_add(global.map_have_been,"BizarroWorld",ini_read_real("havebeen","bizarroworld",0));
ds_list_add(global.list_unlocked_skins,ini_read_real("haveskins","skin1",0),ini_read_real("haveskins","skin2",1),ini_read_real("haveskins","skin3",-1),ini_read_real("haveskins","skin4",-1),ini_read_real("haveskins","skin5",-1),ini_read_real("haveskins","skin6",-1),ini_read_real("haveskins","skin7",-1),ini_read_real("haveskins","skin8",-1),ini_read_real("haveskins","skin9",-1),ini_read_real("haveskins","skin10",-1));
ds_list_add(global.list_unlocked_skins,ini_read_real("haveskins","skin11",-1),ini_read_real("haveskins","skin12",-1),ini_read_real("haveskins","skin13",-1),ini_read_real("haveskins","skin14",-1),ini_read_real("haveskins","skin15",-1),ini_read_real("haveskins","skin16",-1),ini_read_real("haveskins","skin17",-1),ini_read_real("haveskins","skin18",-1),ini_read_real("haveskins","skin19",-1),ini_read_real("haveskins","skin20",-1));
ds_list_add(global.list_unlocked_skins,ini_read_real("haveskins","skin21",-1),ini_read_real("haveskins","skin22",-1),ini_read_real("haveskins","skin23",-1),ini_read_real("haveskins","skin24",-1),ini_read_real("haveskins","skin25",-1),ini_read_real("haveskins","skin26",-1),ini_read_real("haveskins","skin27",-1),ini_read_real("haveskins","skin28",-1),ini_read_real("haveskins","skin29",-1),ini_read_real("haveskins","skin30",-1));
ds_list_add(global.list_unlocked_skins,ini_read_real("haveskins","skin31",-1),ini_read_real("haveskins","skin32",-1),ini_read_real("haveskins","skin33",-1),ini_read_real("haveskins","skin34",-1));
ds_list_add(global.list_bg_skins,ini_read_real("haveskins","bgskin1",0),ini_read_real("haveskins","bgskin2",-1),ini_read_real("haveskins","bgskin3",-1));
global.current_skin = ini_read_real("perfs","skin",0);
global.current_bg_skin = ini_read_real("perfs","bg_skin",0);
global.sound = ini_read_real("perfs","sound",1);
global.music = ini_read_real("perfs","music",1);
global.invert_tilt = ini_read_real("perfs","inverttilt",0);
global.active_cat = ini_read_real("perfs","activecat",1);
global.endmode_best = ini_read_real("achiev","endmodebest",0);
global.endmode_time_min = ini_read_real("achiev","endmodetime_m",0);
global.endmode_time_sec = ini_read_real("achiev","endmodetime_s",0);
global.endmode_5 = ini_read_real("achiev","endmode5",0);
global.bruise = ini_read_real("achiev","bruise",0);
global.gold_medals = ini_read_real("achiev","goldmedals",0);
global.pineapple = ini_read_real("achiev","pineapple",0);
global.donut = ini_read_real("achiev","donut",0);
global.pixel = ini_read_real("achiev","pixel",0);
global.rabbit = ini_read_real("achiev","rabbit",0);
global.dream_world = ini_read_real("achiev","unlockdreamworld",0);
global.eod = ini_read_real("achiev","unlockeod",0);
global.last_breath = ini_read_real("achiev","breath",0);
global.eod_complete = ini_read_real("progress","eodcomplete",0);
global.biz_complete = ini_read_real("progress","dwcomplete",0);
global.spent_d = ini_read_real("perfs","dollars",2);
global.spent_c = ini_read_real("perfs","cents",0);
global.disclaimer = ini_read_real("perfs","disclaimer",0);
var gsignin = ini_read_real("perfs","gsignin",1);
ini_close();

if(gsignin == 1)
{
	if(!achievement_login_status())
	{
		achievement_login();
	}
}

//Other Global Set-Up
global.list_cat = ds_list_create();
global.list_unlocks = ds_list_create();
global.list_locked_skins = ds_list_create();
global.list_skins_order = ds_list_create();
ds_list_add(global.list_skins_order,"skin_base_male","skin_base_female","skin_academic_woman","skin_elemental_air","skin_alice","skin_artemis","skin_altas_man","skin_athena","skin_bruised_atlas","skin_college_guy","skin_dream_world","skin_elemental_earth","skin_elementalist","skin_end_of_days","skin_elemental_fire");
ds_list_add(global.list_skins_order,"skin_franken_atlas","skin_geeky_girl","skin_ghost","skin_hades","skin_hercules","skin_high_seas_atlas","skin_elemental_light","skin_macho_man","skin_poseidon","skin_prototype","skin_elemental_shadow","skin_space_pilot_atlas","skin_stone_statue","skin_artist","skin_progammer");
ds_list_add(global.list_skins_order,"skin_warlock_atlas","skin_elemental_water","skin_young_atlas","skin_zeus");
var add_skin = 1;
while(add_skin < 34)
{
	if(ds_list_find_index(global.list_unlocked_skins,add_skin) == -1)
	{
		ds_list_add(global.list_locked_skins,add_skin);
	}
	add_skin += 1;
}
ds_list_sort(global.list_bg_skins,1);
while(ds_list_find_index(global.list_bg_skins,-1) != -1)
{
	ds_list_delete(global.list_bg_skins,0);
}
global.shake=false;
global.shake_intens=0;
global.tilt_angle=0;
global.tilt_x=0;
global.tilt_center=0;
global.grab_width=sprite_get_width(spr_drop)/2;
global.grab_height=sprite_get_height(spr_drop)/2;
global.rainkill=false;
global.burn=false;
global.darkness_stop=false;
global.open_chapter=0;
global.windspeed=0;
global.cam_moving = false;
global.currently_playing=-1;
global.helper_text_line1="";
global.helper_text_line2="";
global.helper_text_line3="";
global.helper_text_line4="";
global.helper_text_line5="";
global.helper_text_line6="";
global.prev_chapter=2100;
global.ps_meteor=-1;
global.pt_meteor=-1;
global.about=0;
global.ad_pop = 3;
global.video_ad_pop = 0;
draw_set_font(font_all);
draw_set_color(c_black);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
gesture_drag_distance(0.2);

randomize();

//Ads
instance_create_depth(0,0,0,obj_ad_control);

//In-App Purchases:
var purchaseList = ds_list_create();

//Skin Purchase
var purchase1 = ds_map_create();
ds_map_add(purchase1,"id","alternate_skin");
ds_map_add(purchase1,"price","$1.00");
ds_list_add(purchaseList, purchase1);

//Donation 1
var purchase2 = ds_map_create();
ds_map_add(purchase2,"id","donate_1");
ds_map_add(purchase2,"price","$1.00");
ds_list_add(purchaseList, purchase2);

//Donation 2
var purchase3 = ds_map_create();
ds_map_add(purchase3,"id","donate_2");
ds_map_add(purchase3,"price","$2.00");
ds_list_add(purchaseList, purchase3);

//Donation 5
var purchase4 = ds_map_create();
ds_map_add(purchase4,"id","donate_5");
ds_map_add(purchase4,"price","$5.00");
ds_list_add(purchaseList, purchase4);

//Activate and Clean Up
iap_activate(purchaseList);
ds_map_destroy(purchase1);
ds_map_destroy(purchase2);
ds_map_destroy(purchase3);
ds_map_destroy(purchase4);
ds_list_destroy(purchaseList);