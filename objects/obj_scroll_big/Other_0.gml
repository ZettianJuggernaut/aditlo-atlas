instance_destroy();
if(global.goto_room != -1)
{
	instance_create(obj_cam.x,obj_cam.y,obj_fade_black);
	audio_stop_all();
}