draw_self();
if(global.currently_playing == 0)
{
  draw_text(x,y,"CHALLENGE");
}
else if(global.currentlvl > 0 && global.currentlvl < 6)
{
  draw_text(x,y,"LEVEL " + string(global.currentlvl));
}
else if(global.currentlvl > 5 && global.currentlvl < 16)
{
  draw_text(x,y,"LEVEL " + string(global.currentlvl - 5));
}
else if(global.currentlvl > 15 && global.currentlvl < 31)
{
  draw_text(x,y,"LEVEL " + string(global.currentlvl - 15));
}
else if(global.currentlvl > 30 && global.currentlvl < 46)
{
  draw_text(x,y,"LEVEL " + string(global.currentlvl - 30));
}
else if(global.currently_playing == 3)
{
  draw_text(x,y,"TUTORIAL");
}
else if(global.currently_playing == 2)
{
  draw_text(x,y,"ENDLESS MODE");
}
else if(global.currently_playing == 4)
{
  draw_text(x,y,"END OF DAYS");
}
else if(global.currently_playing == 5)
{
  draw_text(x,y,"DREAM WORLD");
}

