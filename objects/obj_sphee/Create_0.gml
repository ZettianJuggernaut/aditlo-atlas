global.tilt_angle = 0;
global.breathing = "Breathing";
if(global.current_skin < 10)
{
	var list_skin = ds_list_create();
	skeleton_skin_list(sprite_index,list_skin);
	ds_list_delete(list_skin,0);
	skeleton_skin_set(ds_list_find_value(list_skin,global.current_skin));
	ds_list_destroy(list_skin);
	skeleton_attachment_create("sphee",spr_sphee,0,3,-1,1,1,60);
	skeleton_attachment_set("Sphere","sphee")
}
else if(global.current_skin == 10)
{
	sprite_index = spr_sphee_biz;
	y += 15;
	x -= 5;
}
else if(global.current_skin < 24)
{
	var list_skin = ds_list_create();
	skeleton_skin_list(sprite_index,list_skin);
	ds_list_delete(list_skin,0);
	skeleton_skin_set(ds_list_find_value(list_skin,global.current_skin));
	ds_list_destroy(list_skin);
	skeleton_attachment_create("sphee",spr_sphee,0,3,0,1,1,60);
	skeleton_attachment_set("Sphere","sphee")
	if(global.current_skin == 12)
	{
		instance_create_depth(x-30,y-30,depth-2,obj_element);
	}
	else if(global.current_skin == 14)
	{
		global.breathing = "BreathingFire";
	}
	else if(global.current_skin == 17)
	{
		global.breathing = "GhostAnim";
	}
	else if(global.current_skin == 23)
	{
		instance_create_depth(x + 65,y + 85,depth,obj_trident);
	}
}
else if(global.current_skin == 24)
{
	sprite_index = spr_sphee_old;
	y += 25;
	x -= 5;
}
else if(global.current_skin < 27)
{
	var list_skin = ds_list_create();
	skeleton_skin_list(sprite_index,list_skin);
	ds_list_delete(list_skin,0);
	skeleton_skin_set(ds_list_find_value(list_skin,global.current_skin));
	ds_list_destroy(list_skin);
	skeleton_attachment_create("sphee",spr_sphee,0,3,0,1,1,60);
	skeleton_attachment_set("Sphere","sphee")
}
else if(global.current_skin == 27)
{
	sprite_index = spr_sphee_stone;
	y += 25;
}
else if(global.current_skin < 33)
{
	var list_skin = ds_list_create();
	skeleton_skin_list(sprite_index,list_skin);
	ds_list_delete(list_skin,0);
	skeleton_skin_set(ds_list_find_value(list_skin,global.current_skin));
	ds_list_destroy(list_skin);
	skeleton_attachment_create("sphee",spr_sphee,0,3,0,1,1,60);
	skeleton_attachment_set("Sphere","sphee");
}
else if(global.current_skin == 33)
{
	instance_destroy();
}
else
{
	skeleton_attachment_create("sphee",spr_sphee,0,3,0,1,1,60);
	skeleton_skin_set("0");
	skeleton_attachment_set("Sphere","sphee");
}
skeleton_animation_mix(global.breathing,"LeftShake",.6);
skeleton_animation_mix(global.breathing,"RightShake",.6);
skeleton_animation_mix("LeftShake",global.breathing,.4);
skeleton_animation_mix("RightShake",global.breathing,.4);
skeleton_animation_set(global.breathing);