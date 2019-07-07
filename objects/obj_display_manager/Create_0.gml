/// @descr Display Properties
ideal_width = 0;
ideal_height = 768;
display_width = display_get_width();
display_height = display_get_height();

aspect_ratio = display_width/display_height;
ideal_width = round(ideal_height*aspect_ratio);

//Check for odd numbers
if(ideal_width & 1)
  ideal_width++;
if(ideal_height & 1)
  ideal_height++;

surface_resize(application_surface,ideal_width,ideal_height);

  
alarm[0]=1;

//Next Room
room_goto_next();

