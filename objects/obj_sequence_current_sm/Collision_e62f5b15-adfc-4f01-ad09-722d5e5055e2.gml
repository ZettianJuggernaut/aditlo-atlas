///Sequence Scoring
var lifemin = 1800*global.seconds_passed;
var lifemax = 5400*global.seconds_passed;
part_type_life(global.pt_scored,lifemin,lifemax);
part_emitter_burst(global.ps_scored,global.pe_scored,global.pt_scored,50);
if(global.combo == true)
{
	with(instance_nearest(x,y,obj_scored_drop))
	{
		if(image_index == 0)
		{
			with(instance_nearest(x,y,obj_halo_black))
			{
				instance_destroy();
			}
		}
		else if(image_index == 1)
		{
			with(instance_nearest(x,y,obj_halo_blue))
			{
				instance_destroy();
			}
		}
		else if(image_index == 2)
		{
			with(instance_nearest(x,y,obj_halo_green))
			{
				instance_destroy();
			}
		}
		else if(image_index == 3)
		{
			with(instance_nearest(x,y,obj_halo_red))
			{
				instance_destroy();
			}
		}
		else if(image_index == 4)
		{
			with(instance_nearest(x,y,obj_halo_white))
			{
				instance_destroy();
			}
		}
		else if(image_index == 5)
		{
			with(instance_nearest(x,y,obj_halo_yellow))
			{
				instance_destroy();
			}
		}
		instance_destroy();
	}
	global.combo = false;
}
else if(global.combo == false)
{
	if(global.scored == false)
	{
		var ddepth = obj_sequence_current_sm.depth + 1;
		with(instance_nearest(x,y,obj_halo_black))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_halo_blue))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_halo_green))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_halo_red))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_halo_white))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_halo_yellow))
		{
			if(depth == ddepth)
			{
				instance_destroy();
			}
		}
		with(instance_nearest(x,y,obj_scored_drop))
		{
			instance_destroy();
		}
		global.scored = true;
		ds_list_clear(global.list_scored);
		ds_list_delete(global.list_sequencing,0);
		if(ds_list_find_index(global.list_token_black,image_index) > -1)
		{
			script_execute(shutoff_black);
		}
		if(ds_list_find_index(global.list_token_blue,image_index) > -1)
		{
			script_execute(shutoff_blue);
		}
		if(ds_list_find_index(global.list_token_green,image_index) > -1)
		{
			script_execute(shutoff_green);
		}
		if(ds_list_find_index(global.list_token_red,image_index) > -1)
		{
			script_execute(shutoff_red);
		}
		if(ds_list_find_index(global.list_token_white,image_index) > -1)
		{
			script_execute(shutoff_white);
		}
		if(ds_list_find_index(global.list_token_yellow,image_index) > -1)
		{
			script_execute(shutoff_yellow);
		}
		image_index = ds_list_find_value(global.list_sequencing,0);
		with(obj_sequence_current)
		{
			image_index = ds_list_find_value(global.list_sequencing,0);
		}
		if(global.current_skin == 12)
		{
			script_execute(emblem_setting);
		}
		if(ds_list_find_index(global.list_token_black,image_index) > -1 && ds_list_find_index(global.list_token_frozen,0) > -1)
		{
			instance_create_depth(x,y,depth+1,obj_halo_black);
			if(obj_sequence_current.image_index == 6 && ds_list_find_index(global.list_token_frozen,1) != -1)
			{
				ds_list_add(global.list_token_frozen,6);
			}
			else if(obj_sequence_current.image_index == 7 && ds_list_find_index(global.list_token_frozen,2) != -1)
			{
				ds_list_add(global.list_token_frozen,7);
			}
			else if(obj_sequence_current.image_index == 8 && ds_list_find_index(global.list_token_frozen,3) != -1)
			{
				ds_list_add(global.list_token_frozen,8);
			}
			else if(obj_sequence_current.image_index == 9 && ds_list_find_index(global.list_token_frozen,4) != -1)
			{
				ds_list_add(global.list_token_frozen,9);
			}
		}
		if(ds_list_find_index(global.list_token_blue,image_index) > -1 && ds_list_find_index(global.list_token_frozen,1) > -1)
		{
			instance_create_depth(x,y,depth+1,obj_halo_blue);
			if(obj_sequence_current.image_index == 10 && ds_list_find_index(global.list_token_frozen,2) != -1)
			{
				ds_list_add(global.list_token_frozen,10)
			}
			else if(obj_sequence_current.image_index == 11 && ds_list_find_index(global.list_token_frozen,3) != -1)
			{
				ds_list_add(global.list_token_frozen,11)
			}
			else if(obj_sequence_current.image_index == 12 && ds_list_find_index(global.list_token_frozen,4) != -1)
			{
				ds_list_add(global.list_token_frozen,12)
			}
			else if(obj_sequence_current.image_index == 16 && ds_list_find_index(global.list_token_frozen,5) != -1)
			{
				ds_list_add(global.list_token_frozen,16)
			}
		}
		if(ds_list_find_index(global.list_token_green,image_index) > -1)
		{
			if(global.currentlvl == 6 && global.dream_world == 1)
			{
				image_yscale = -1;
			}
			if(ds_list_find_index(global.list_token_frozen,2) > -1)
			{
				instance_create_depth(x,y,depth+1,obj_halo_green);
				if(obj_sequence_current.image_index == 13 && ds_list_find_index(global.list_token_frozen,4) != -1)
				{
					ds_list_add(global.list_token_frozen,13)
				}
				else if(obj_sequence_current.image_index == 14 && ds_list_find_index(global.list_token_frozen,3) != -1)
				{
					ds_list_add(global.list_token_frozen,14)
				}
				else if(obj_sequence_current.image_index == 17 && ds_list_find_index(global.list_token_frozen,5) != -1)
				{
					ds_list_add(global.list_token_frozen,17)
				}
			}
		}
		if(ds_list_find_index(global.list_token_red,image_index) > -1)
		{
			if(global.currentlvl == 6 && global.dream_world == 1)
			{
				image_yscale = 1;
			}
			if(ds_list_find_index(global.list_token_frozen,3) > -1)
			{
				instance_create_depth(x,y,depth+1,obj_halo_red);
				if(obj_sequence_current.image_index == 15 && ds_list_find_index(global.list_token_frozen,4) != -1)
				{
					ds_list_add(global.list_token_frozen,15)
				}
				else if(obj_sequence_current.image_index == 18 && ds_list_find_index(global.list_token_frozen,5) != -1)
				{
					ds_list_add(global.list_token_frozen,18)
				}
			}
		}
		if(ds_list_find_index(global.list_token_white,image_index) > -1 && ds_list_find_index(global.list_token_frozen,4) > -1)
		{
			instance_create_depth(x,y,depth+1,obj_halo_white);
			if(obj_sequence_current.image_index == 19 && ds_list_find_index(global.list_token_frozen,5) != -1)
			{
				ds_list_add(global.list_token_frozen,19)
			}
		}
		if(ds_list_find_index(global.list_token_yellow,image_index) > -1 && ds_list_find_index(global.list_token_frozen,5) > -1)
		{
			instance_create_depth(x,y,depth+1,obj_halo_yellow);
		}
		script_execute(sequence_glow_setup);
		if(image_index != 20)
		{
			if(script_execute(token_on))
			{
				script_execute(token_affect);
			}
			if(global.currently_playing == 0 && global.remaining == 15)
			{
				global.fallspeed += .5;
				with(obj_drop)
				{
					if(vspeed > 0)
					{
						vspeed = global.fallspeed;
					}
				}
			}
			else if(global.currently_playing == 2)
			{
				ds_list_add(global.list_sequencing,irandom(19));
				global.endless_score += 1;
			}
			else if(global.currently_playing == 3)
			{
				if(image_index == 1)
				{
					with(obj_drop_spawn_tutorial)
					{
						alarm_set(1,90);
					}
					ds_list_add(global.list_cat,"SPLENDID WORK!","AS YOU CAN SEE, I\'VE","RETURNED THE","ELEMENTAL TOKENS TO","THEIR REGULAR","HABITS NOW.","A BLUE TOKEN IS","UP NEXT, IS IT NOT?","GO ON AHEAD AND","ACTIVATE ONE OF","THEM, WOULD","YOU?");
					if(!instance_exists(obj_speak_bubble))
					{
						instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
					}
				}
				else if(image_index == 2)
				{
					ds_list_add(global.list_cat,"WONDERFUL! I DO","BELIEVE YOU\'RE GETTING","THE HANG OF THIS. LET\'S","SEE IF YOU CAN DO THE","NEXT THREE COLORS","ON YOUR OWN.");
					if(!instance_exists(obj_speak_bubble))
					{
						instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
					}
				}
				else if(image_index == 5)
				{
					ds_list_add(global.list_cat,"SIMPLY EXCELLENT!","NOW, FOR THE LAST","CRUCIAL PART, I'M GOING","TO REACTIVATE YOUR","DEVICE\'S BALANCING","CAPABILITIES.","THE KEY IS TO KEEP","THE CELESTIAL SPHERE AS","CENTERED AS POSSIBLE. ","KEEP A CLOSE EYE ON YOUR","DISPLAY AT THE BOTTOM","OF YOUR SCREEN.","IF THAT QUAINT LITTLE","BLUE BALL REACHES EITHER","EDGE, ATLAS, POOR CHAP,");
					ds_list_add(global.list_cat,"WILL DROP THE SPHERE","AND THINGS WILL","SURELY GET NASTY.","SO ARE YOU READY?","JUST TAP ONCE AND","THE GAME WILL RESUME.");
					if(!instance_exists(obj_speak_bubble))
					{
						instance_create(obj_the_cat.x + sprite_get_width(spr_cat)/2,obj_the_cat.y + sprite_get_height(spr_cat)/3,obj_speak_bubble);
					}
				}
			}
		}
		else if(image_index == 20)
		{
			if(global.music == 1 && audio_is_playing(global.current_music))
			{
				audio_sound_gain(global.current_music,0,500)
			}
			global.won = true;
			global.goto_room = rm_inlvl;
			instance_create_depth(obj_cam.x,obj_cam.y,-200,obj_fade_black);
		}
	}
}