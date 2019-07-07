image_speed = 0;
if(global.currently_playing == 0)
{
  if(global.current_cp == 1)
  {
    image_index = 1;
    global.unlock_text = "CHAPTER 1, LEVEL 1";
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter1;
    }
  }
  else if(global.current_cp == 2)
  {
    image_index = 1;
    global.unlock_text = "CHAPTER 2, LEVEL 1";
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter2;
    }
  }
  else if(global.current_cp == 3)
  {
    image_index = 1;
    global.unlock_text = "CHAPTER 3, LEVEL 1";
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter3;
    }
  }
  else if(global.current_cp == 4)
  {
    image_index = 1;
    global.unlock_text = "CHAPTER 4, LEVEL 1";
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter4;
    }
  }
}
else if(global.currently_playing == 1)
{
  if(global.currentlvl == 2)
  {
    image_index = 3;
    global.unlock_text = "CHAPTER 1, LEVEL 2";
  }
  else if(global.currentlvl == 3)
  {
    image_index = 5;
    global.unlock_text = "CHAPTER 1, LEVEL 3";
  }
  else if(global.currentlvl == 4)
  {
    image_index = 7;
    global.unlock_text = "CHAPTER 1, LEVEL 4";
  }
  else if(global.currentlvl == 5)
  {
    image_index = 9;
    global.unlock_text = "CHAPTER 1, LEVEL 5";
  }
  else if(global.currentlvl == 7)
  {
    image_index = 3;
    global.unlock_text = "CHAPTER 2, LEVEL 2";
  }
  else if(global.currentlvl == 8)
  {
    image_index = 5;
    global.unlock_text = "CHAPTER 2, LEVEL 3";
  }
  else if(global.currentlvl == 9)
  {
    image_index = 7;
    global.unlock_text = "CHAPTER 2, LEVEL 4";
  }
  else if(global.currentlvl == 10)
  {
    image_index = 9;
    global.unlock_text = "CHAPTER 2, LEVEL 5";
  }
  else if(global.currentlvl == 11)
  {
    image_index = 11;
    global.unlock_text = "CHAPTER 2, LEVEL 6";
  }
  else if(global.currentlvl == 12)
  {
    image_index = 13;
    global.unlock_text = "CHAPTER 2, LEVEL 7";
  }
  else if(global.currentlvl == 13)
  {
    image_index = 15;
    global.unlock_text = "CHAPTER 2, LEVEL 8";
  }
  else if(global.currentlvl == 14)
  {
    image_index = 17;
    global.unlock_text = "CHAPTER 2, LEVEL 9";
  }
  else if(global.currentlvl == 15)
  {
    image_index = 19;
    global.unlock_text = "CHAPTER 2, LEVEL 10";
  }
  else if(global.currentlvl == 17)
  {
    image_index = 3;
    global.unlock_text = "CHAPTER 3, LEVEL 2";
  }
  else if(global.currentlvl == 18)
  {
    image_index = 5;
    global.unlock_text = "CHAPTER 3, LEVEL 3";
  }
  else if(global.currentlvl == 19)
  {
    image_index = 7;
    global.unlock_text = "CHAPTER 3, LEVEL 4";
  }
  else if(global.currentlvl == 20)
  {
    image_index = 9;
    global.unlock_text = "CHAPTER 3, LEVEL 5";
  }
  else if(global.currentlvl == 21)
  {
    image_index = 11;
    global.unlock_text = "CHAPTER 3, LEVEL 6";
  }
  else if(global.currentlvl == 22)
  {
    image_index = 13;
    global.unlock_text = "CHAPTER 3, LEVEL 7";
  }
  else if(global.currentlvl == 23)
  {
    image_index = 15;
    global.unlock_text = "CHAPTER 3, LEVEL 8";
  }
  else if(global.currentlvl == 24)
  {
    image_index = 17;
    global.unlock_text = "CHAPTER 3, LEVEL 9";
  }
  else if(global.currentlvl == 25)
  {
    image_index = 19;
    global.unlock_text = "CHAPTER 3, LEVEL 10";
  }
  else if(global.currentlvl == 26)
  {
    image_index = 21;
    global.unlock_text = "CHAPTER 3, LEVEL 11";
  }
  else if(global.currentlvl == 27)
  {
    image_index = 23;
    global.unlock_text = "CHAPTER 3, LEVEL 12";
  }
  else if(global.currentlvl == 28)
  {
    image_index = 25;
    global.unlock_text = "CHAPTER 3, LEVEL 13";
  }
  else if(global.currentlvl == 29)
  {
    image_index = 27;
    global.unlock_text = "CHAPTER 3, LEVEL 14";
  }
  else if(global.currentlvl == 30)
  {
    image_index = 29;
    global.unlock_text = "CHAPTER 3, LEVEL 15";
  }
  else if(global.currentlvl == 32)
  {
    image_index = 3;
    global.unlock_text = "CHAPTER 4, LEVEL 2";
  }
  else if(global.currentlvl == 33)
  {
    image_index = 5;
    global.unlock_text = "CHAPTER 4, LEVEL 3";
  }
  else if(global.currentlvl == 34)
  {
    image_index = 7;
    global.unlock_text = "CHAPTER 4, LEVEL 4";
  }
  else if(global.currentlvl == 35)
  {
    image_index = 9;
    global.unlock_text = "CHAPTER 4, LEVEL 5";
  }
  else if(global.currentlvl == 36)
  {
    image_index = 11;
    global.unlock_text = "CHAPTER 4, LEVEL 6";
  }
  else if(global.currentlvl == 37)
  {
    image_index = 13;
    global.unlock_text = "CHAPTER 4, LEVEL 7";
  }
  else if(global.currentlvl == 38)
  {
    image_index = 15;
    global.unlock_text = "CHAPTER 4, LEVEL 8";
  }
  else if(global.currentlvl == 39)
  {
    image_index = 17;
    global.unlock_text = "CHAPTER 4, LEVEL 9";
  }
  else if(global.currentlvl == 40)
  {
    image_index = 19;
    global.unlock_text = "CHAPTER 4, LEVEL 10";
  }
  else if(global.currentlvl == 41)
  {
    image_index = 21;
    global.unlock_text = "CHAPTER 4, LEVEL 11";
  }
  else if(global.currentlvl == 42)
  {
    image_index = 23;
    global.unlock_text = "CHAPTER 4, LEVEL 12";
  }
  else if(global.currentlvl == 43)
  {
    image_index = 25;
    global.unlock_text = "CHAPTER 4, LEVEL 13";
  }
  else if(global.currentlvl == 44)
  {
    image_index = 27;
    global.unlock_text = "CHAPTER 4, LEVEL 14";
  }
  else if(global.currentlvl == 45)
  {
    image_index = 29;
    global.unlock_text = "CHAPTER 4, LEVEL 15";
  }
  
  //Chapter Icon
  if(global.currentlvl <= 5)
  {
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter1;
    }
  }
  else if(global.currentlvl >= 7 && global.currentlvl <= 15)
  {
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter2;
    }
  }
  else if(global.currentlvl >= 17 && global.currentlvl <= 30)
  {
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter3;
    }
  }
  else if(global.currentlvl >= 32 && global.currentlvl <= 45)
  {
    with(instance_create_depth(x-40,y-40,depth-1,obj_cptunlock_mini))
    {
      sprite_index = spr_selector_chapter4;
    }
  }
}

