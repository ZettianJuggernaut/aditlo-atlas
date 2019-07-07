if(global.swipe_angle == image_index)
{
	global.swipe_angle = -1;
	if(image_index == 0)
	{
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_horztop;
			alarm_set(0,1);
			hspeed = -3;
		}
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_horzbottom;
			alarm_set(1,1);
			hspeed = 3;
		}
	}
	else if(image_index == 1)
	{
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_vertleft;
			alarm_set(0,1);
			hspeed = -3;
		}
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_vertright;
			alarm_set(1,1);
			hspeed = 3;
		}
	}
	else if(image_index == 2)
	{
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_downright;
			alarm_set(0,1);
			hspeed = -3;
		}
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_downright;
			image_index = 1;
			alarm_set(1,1);
			hspeed = 3;
		}
	}
	else if(image_index == 3)
	{
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_downleft;
			alarm_set(0,1);
			hspeed = -3;
		}
		with(instance_create(x,y,obj_meteor_split))
		{
			sprite_index = spr_meteor_downleft;
			image_index = 1;
			alarm_set(1,1);
			hspeed = 3;
		}
	}
	if(global.sound == 1)
	{
		audio_play_sound(sd_ghoul_hit,7,0);
		audio_play_sound(sd_medal_break,7,0);
		audio_play_sound(sd_token_break,7,0);
	}
	instance_destroy();
}