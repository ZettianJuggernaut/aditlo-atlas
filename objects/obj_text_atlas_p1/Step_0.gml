/// @description Shake Effect

if(global.shake == true)
{
	var xx = random_range(684 + global.shake_intens,724 - global.shake_intens);
	var yy = random_range(508 + global.shake_intens,548 - global.shake_intens);
	x = xx;
	y = yy;
	with(obj_text_atlas_p2)
	{
		x = xx;
		y = yy;
	}
	with(obj_text_atlas_left)
	{
		x = xx;
		y = yy;
	}
	with(obj_text_atlas_right)
	{
		x = xx;
		y = yy;
	}
}