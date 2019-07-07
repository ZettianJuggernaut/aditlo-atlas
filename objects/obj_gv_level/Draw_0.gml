draw_self();
if(medal_image > -1)
{
	draw_sprite_ext(spr_medal_level,medal_image,x,y,image_xscale,image_yscale,0,-1,1);
}
if(x == obj_scroll_gameover.x + 25 && y == obj_scroll_gameover.y - 80)
{
  draw_text(x,y-60,"BEST:");
}