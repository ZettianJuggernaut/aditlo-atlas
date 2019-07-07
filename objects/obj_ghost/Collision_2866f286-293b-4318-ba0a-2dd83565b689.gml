if(global.tilt_x < global.tilt_center)
{
  global.tilt_x -= 100;
  global.tilt_angle += 14.2;
}
else
{
  global.tilt_x += 100;
  global.tilt_angle -= 14.2;
}
if(global.sound == 1)
{
	audio_play_sound(sd_ghoul_hit,9,0);
	audio_play_sound(sd_atlas_hurt,9,0);
}
var left, right, top, bottom;
left = x - sprite_get_height(spr_ghost_back);
right = x + sprite_get_height(spr_ghost_back);
top = y - sprite_get_width(spr_ghost_back);
bottom = y + sprite_get_width(spr_ghost_back);
part_emitter_region(global.ps_ghost,global.pe_ghost,left,right,top,bottom,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(global.ps_ghost,global.pe_ghost,global.pt_ghost,50 + irandom(30));
left = obj_atlas.x - sprite_get_height(spr_atlas)/2;
right = obj_atlas.x + sprite_get_height(spr_atlas)/2;
top = obj_atlas.y - sprite_get_width(spr_atlas)*2;
bottom = obj_atlas.y;
part_emitter_region(global.ps_ghost,global.pe_ghost,left,right,top,bottom,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(global.ps_ghost,global.pe_ghost,global.pt_ghost,20 + irandom(30));
instance_destroy();