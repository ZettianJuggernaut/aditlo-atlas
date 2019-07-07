draw_set_font(font_about);
if(image_xscale > 1)
{
	draw_text_colour(x,y,"TAP FOR MORE",c_white,c_white,c_white,c_white,1);
}
else
{
	draw_text(x,y,"TAP FOR MORE");
}
draw_set_font(font_all);