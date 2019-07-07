draw_set_font(font_large);
if(global.currently_playing == 2)
{
  draw_self();
}
else
{
  draw_text_color(x,y,"+" + string(global.remaining),c_white,c_white,c_white,c_white,1);
}
draw_set_font(font_all);