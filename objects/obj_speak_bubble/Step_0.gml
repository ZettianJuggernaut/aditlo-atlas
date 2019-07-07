if(device_mouse_check_button_released(0,mb_left))
{
  if(device_mouse_x(0) > x && device_mouse_x(0) < x + sprite_get_width(spr_speak_bubble))
  {
    if(device_mouse_y(0) > y - sprite_get_height(spr_speak_bubble) && device_mouse_y(0) < y)
    {
      if(global.sound == 1)
	  {
		audio_play_sound(sd_chesire_tap,5,0);
	  }
	  if(ds_list_empty(global.list_cat))
      {
        global.helper_text_line1 = "";
        global.helper_text_line2 = "";
        global.helper_text_line3 = "";
        global.helper_text_line4 = "";
        global.helper_text_line5 = "";
        global.helper_text_line6 = "";
        with(obj_the_cat)
        {
          skeleton_animation_set("Idle");
        }
        if(room == rm_game_modes && global.currently_playing == 3)
        {
          instance_create(0,0,obj_swipe_senor);
          if(obj_sequence_current_sm.image_index == 0 && !instance_exists(obj_drop_tutorial))
          {
            with(obj_drop_spawn_tutorial)
            {
              alarm_set(0,1);
            }
          }
          else if(obj_sequence_current_sm.image_index == 5 && global.first_blue == false)
          {
            with(obj_sphee_tutorial)
            {
              alarm_set(0,900);
            }
            global.first_blue = true;
          }
        }
        else
        {
          if(instance_exists(obj_pause_senor))
          {
            instance_create_depth(obj_the_cat.x + 136,obj_the_cat.y + 46,obj_pause_senor.depth - 4,obj_cat_retalk);
          }
		  with(obj_the_cat)
          {
            alarm_set(1,1);
          }
        }
        instance_destroy();
      }
      else if(!ds_list_empty(global.list_cat))
      {
        if(alarm_get(5) == -1)
        {
          global.helper_text_line1 = "";
          global.helper_text_line2 = "";
          global.helper_text_line3 = "";
          global.helper_text_line4 = "";
          global.helper_text_line5 = "";
          global.helper_text_line6 = "";
          alarm_set(0,1);
        }
        else
        {
          if(alarm_get(1) > 0)
          {
            alarm_set(1,1);
            alarm_set(2,2);
            alarm_set(3,3);
            alarm_set(4,4);
            alarm_set(5,5);
          }
          else if(alarm_get(2) > 1)
          {
            alarm_set(2,1);
            alarm_set(3,2);
            alarm_set(4,3);
            alarm_set(5,4);
          }
          else if(alarm_get(3) > 2)
          {
            alarm_set(3,1);
            alarm_set(4,2);
            alarm_set(5,3);
          }
          else if(alarm_get(4) > 3)
          {
            alarm_set(4,1);
            alarm_set(5,2);
          }
          else if(alarm_get(5) > 4)
          {
            alarm_set(5,1);
          }
        }
      }
    }
  }
}