/// @description Brust 3
var lifemin = 1800*global.seconds_passed;
var lifemax = 5400*global.seconds_passed;
part_type_life(global.pt_unlock,lifemin,lifemax);
part_emitter_burst(global.ps_unlock,global.pe_unlock,global.pt_unlock,100);