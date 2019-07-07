if(global.current_cp == 1)
{
  sprite_index = spr_selector_chapter2;
  image_xscale = .5;
  global.unlock_text = "CHAPTER 2, CHALLENGE";
}
else if(global.current_cp == 2)
{
  sprite_index = spr_selector_chapter3;
  image_xscale = .4;
  global.unlock_text = "CHAPTER 3, CHALLENGE";
}
else if(global.current_cp == 3)
{
  sprite_index = spr_selector_chapter4;
  image_xscale = .33;
  global.unlock_text = "CHAPTER 4, CHALLENGE";
}
image_yscale = image_xscale;