///Particle Effect
var x_post, y_post, color;
repeat(irandom_range(1,2))
{
	x_post = random_range(x - sprite_get_width(spr_meteor)/2,x + sprite_get_width(spr_meteor)/2);
	y_post = random_range(y - sprite_get_height(spr_meteor)/2,y + sprite_get_height(spr_meteor)/2);
	color = choose(c_white,c_white,c_white,c_orange);
	part_particles_create_colour(global.ps_meteor,x_post,y_post,global.pt_meteor,color,1);
}
alarm_set(0,irandom_range(1,2));