///Particle Effect
var x_post, y_post, color;
x_post = random_range(x - sprite_get_width(spr_meteor_mini)/2,x + sprite_get_width(spr_meteor_mini)/2);
y_post = random_range(y - sprite_get_height(spr_meteor_mini)/2,y + sprite_get_height(spr_meteor_mini)/2);
color = choose(c_white,c_white,c_white,c_orange);
part_particles_create_colour(global.ps_meteor,x_post,y_post,global.pt_meteor,color,1);
alarm_set(1,irandom_range(1,2));