/// @description Fog Effect
part_emitter_region(global.ps_ghost,global.pe_ghost,x - sprite_get_width(spr_ghost_back)/1.7,x + sprite_get_width(spr_ghost_back)/1.7,y - sprite_get_height(spr_ghost_back)/1.7,y + sprite_get_height(spr_ghost_back)/1.7,ps_shape_ellipse,ps_distr_linear);
part_emitter_burst(global.ps_ghost,global.pe_ghost,global.pt_ghost,10 + irandom(10));
alarm_set(2,irandom_range(2,4));