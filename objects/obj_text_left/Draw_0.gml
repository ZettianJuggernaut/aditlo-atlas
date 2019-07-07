draw_self();
if(global.currently_playing = 0)
{
  draw_text(x,y,string_hash_to_newline("CHAPTER " + string(global.current_cp + 1)));
}
else if(global.currentlvl > 0 && global.currentlvl < 6)
{
  draw_text(x,y,string_hash_to_newline("CHAPTER 1"));
}
else if(global.currentlvl > 5 && global.currentlvl < 16)
{
  draw_text(x,y,string_hash_to_newline("CHAPTER 2"));
}
else if(global.currentlvl > 15 && global.currentlvl < 31)
{
  draw_text(x,y,string_hash_to_newline("CHAPTER 3"));
}
else if(global.currentlvl > 30 && global.currentlvl < 46)
{
  draw_text(x,y,string_hash_to_newline("CHAPTER 4"));
}