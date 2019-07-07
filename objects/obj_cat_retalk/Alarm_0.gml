var retalk = irandom(2);
if(retalk == 0)
{
	ds_list_add(global.list_cat,"WELL, I SEE","MEMORY ISN'T YOUR","STRONG SUIT, DEAR","HUMAN. LET ME","TRY AGAIN:","");
}
else if(retalk == 1)
{
	ds_list_add(global.list_cat,"HMM, ARE YOU","SURE YOU REALLY","WANT ME TO REPEAT","MYSELF? OH WELL,","HERE GOES THEN","");
}
else if(retalk == 2)
{
	ds_list_add(global.list_cat,"HRMPH, WERE","YOU EVEN PAYING","ATTENTION LAST TIME?","PLEASE, LISTEN CLOSELY","THIS TIME, WILL YOU?","");
}

if(global.currently_playing = 0)
{
	if(global.current_cp == 1)
	{
	    //Chapter 2
	    ds_list_add(global.list_cat,"I FEAR THINGS ARE","GETTING RATHER","INTENSE NOW, HUMAN.","THE ELEMENTS THEMSELVES","SEEM TO BE OUT TO GET","YOU.","THE CURRENT TARGET","TOKEN, SHOWN ON YOUR","HUD, IS NOW ALSO A","CATALYST FOR SOME","RATHER NASTY","EFFECTS.","A BLACK TOKEN","CAUSES NIGHT TO","DESCEND, OBSCURING");
	    ds_list_add(global.list_cat,"YOUR VIEW.","","","A WHITE TOKEN","SUMMONS A STRONG","WIND, CAUSING THE","SPHERE TO TILT RATHER","UNPLEASANTLY.","","A YELLOW TOKEN","CONJURES AN INTENSE","BEAM OF SUNLIGHT","THAT IS RATHER PAINFUL","TO THE EYES.","");
	    ds_list_add(global.list_cat,"A BLUE TOKEN","CALLS DOWN A HEAVY","RAINSTORM, MAKING THE","TOKENS SLIPPERY AND","HARD TO GRASP.","","A GREEN TOKEN","WILL CAUSE UNNATURAL","VINES TO GROW ON YOUR","SCREEN, HIDING TOKENS","BEHIND IT.","","LASTLY, A RED TOKEN","WILL TRIGGER A","SPONTANEOUS COMBUSTION");
	    ds_list_add(global.list_cat,"IN THE TOKENS ON SCREEN","IF YOU SWIPE INCORRECTLY","WHEN DRAWING.","GOOD LUCK, DEAR","HUMAN. I DO BELIEVE","YOU\'LL NEED ALL THE","LUCK YOU CAN GET.");
	}
	else if(global.current_cp == 2)
	{
		//Chapter 3
		ds_list_add(global.list_cat,"OH DEAR, OH DEAR!","ZEUS MUST TRULY BE IN","A TERRIBLE MOOD. I\'D LIKE","TO OFFER MY PREEMPTIVE","CONDOLENCES FOR THE","TRIALS AHEAD.","IT SEEMS MANY TARGET","TOKENS HAVE FUSED INTO","UNNATURAL COMBINATIONS.","TO COMPLETE THESE, YOU","MUST ACTIVATE BOTH OF","THOSE COLORS.","THEN, WITH A TOKEN","OF EACH COLOR ACTIVE","SIMULTANEOUSLY, YOU");
		ds_list_add(global.list_cat,"MUST COMPLETE A RATHER","COMPLEX SWIPE","SEQUENCE.","DON'T FRET SO,","I\'LL BE HERE TO GUIDE","YOU THROUGH EACH","COMBINATION SEQUENCE","AS THEY COME UP.","","IF YOU HAVEN\'T YET","FIGURED IT OUT, A","CRUCIAL TECHNIQUE TO","SUCCEEDING IS YOUR","ABILITY TO GRAB AND","HOLD TOKENS.");
		ds_list_add(global.list_cat,"IN DOING SO, YOU","WILL PREVENT THAT","TOKEN FROM CRACKING","UNTIL YOU RELEASE IT,","ALLOWING YOU TO","HOLD IT LONGER.","THIS TECHNIQUE IS","VITAL TO TIMING BOTH","TOKEN ACTIVATIONS IN","ORDER TO COMPLETE","A COMBINATION","TARGET.");
	}
	else if(global.current_cp == 3)
	{
		//Chapter 4
		ds_list_add(global.list_cat,"OH, THIS IS SIMPLY","DREADFUL NOW! THE","FORCES OF EVIL HAVE","SENT CHAOTIC MINIONS","TO ASSAULT DEAR","POOR ATLAS!","YOU MUST PROTECT","ATLAS AT ALL COSTS.","DOUBLE TAP ON THESE","WRETCHED CREATURES","TO DISPEL THEM.","","DON\'T LET THEM","GET TO ATLAS! DON\'T","LET THE SPHERE DROP!");
		ds_list_add(global.list_cat,"AND REMEMBER, YOU","MUST STILL COMPLETE","THE SEQUENCES!");
	}
}
else if(global.currently_playing == 1)
{
	ds_list_clear(global.list_cat);
	if(global.sound == 1)
	{
		audio_play_sound(sd_dw_unlock,10,0);
	}
	global.dream_world = 4;
	ini_open("save.ini");
	ini_write_real("achiev","unlockdreamworld",4);
	ini_close();
}
else if(global.currently_playing == 4)
{
	//End of Days
	ds_list_add(global.list_cat,"IN THIS MINI GAME,","YOU'LL NEED TO AID","ATLAS BY DESTROYING","THE FALLING METEORITES","WHILE MAINTAINING","SPHERE BALANCE.","EACH METEORITE HAS","A CRACK RUNNING THE","LENGTH OF IT; SIMPLY");
	ds_list_add(global.list_cat,"MAKE A SLICE MOTION","ACROSS THE CRACK","TO DESTROY IT.","OH, AND I'VE BEEN","MADE AWARE THAT","THIS MINI GAME LASTS","FOR FIVE MINUTES,","SO HOLD IN THERE!");
}
else if(global.currently_playing == 5)
{
	//Dream World
	ds_list_add(global.list_cat,"I... OH, OH DEAR,","THIS IS RATHER","DISORIENTING, ISN'T IT?","YOU THINK IT'S TROUBLING","FOR YOU? IMAGINE BEING","THE ONE IN HERE!","AHEM... TAKE A","DEEP BREATH... WHEH!","ANYWAYS, I DO BELIEVE","THE GOAL OF THIS MINI","GAME IS MORE OR LESS","THE SAME AS USUAL.","SIMPLY SCORE THE","TOKENS AS SHOWN ON","YOUR HUD BAR AT THE");
	ds_list_add(global.list_cat,"TOP--UH, I MEAN","BOTTOM--OF YOUR","SCREEN.","AS USUAL, KEEP AN","EYE ON THE SPHERE","AND WATCH OUT FOR","THOSE NASTY, VILE","CREATURES THAT ARE","OUT FOR ATLAS.","GOOD LUCK,","HUMAN. I'M GOING","TO... I'LL JUST...","WELL, I'LL BE SOMEWHERE","THAT CERTAINLY ISN'T","HERE. GOODBYE!");
}
instance_create_depth(camera_get_view_x(view_camera[0]) + sprite_get_width(spr_cat)/2.5,camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - sprite_get_height(spr_cat)/2.5 - 30,depth-1,obj_the_cat);
speed = 0;