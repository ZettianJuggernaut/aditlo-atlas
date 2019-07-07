///Set-Up
instance_create_depth(x - 285,y,-26,obj_sequence_current);
if(global.currently_playing < 5)
{
  instance_create_depth(x + 308,y-28,-26,obj_text_remaining);
}
else if(global.currently_playing == 5)
{
  instance_create_depth(x + 308,y+28,-26,obj_text_remaining);
}

//Part System
var xmin, xmax, ymin, ymax, lifemin, lifemax;
xmin = x - 375;
xmax = x - 85;
ymin = y - sprite_get_height(sprite_index);
ymax = y + sprite_get_height(sprite_index)/2;
lifemin = 1800*global.seconds_passed;
lifemax = 5400*global.seconds_passed;
global.ps_scored = part_system_create();
part_system_depth(global.ps_scored,-99);
global.pt_scored = part_type_create();
global.pe_scored = part_emitter_create(global.ps_scored);
part_emitter_region(global.ps_scored,global.pe_scored,xmin,xmax,ymin,ymax,ps_shape_ellipse,ps_distr_linear);
part_type_shape(global.pt_scored,pt_shape_spark);
part_type_life(global.pt_scored,lifemin,lifemax);
part_type_alpha2(global.pt_scored,1,0);
part_type_size(global.pt_scored,.5,1.5,.03,0);
part_type_speed(global.pt_scored,.5,1,0,0);
part_type_direction(global.pt_scored,250,290,0,.5);