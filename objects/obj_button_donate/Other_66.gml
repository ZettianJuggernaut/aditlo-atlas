var donation;
if(image_index == 0)
{
	donation = "donate_1";
}
else if(image_index == 1)
{
	donation = "donate_2";
}
else if(image_index == 2)
{
	donation = "donate_5";
}
var p_map = ds_map_create();
var p_index = ds_map_find_value(iap_data, "index");
iap_purchase_details(p_index,p_map);
if(ds_map_find_value(p_map,"status") == iap_purchased)
{
	iap_consume(donation);
	if(image_index ==  0)
	{
		global.spent_d -= 1;
	}
	else if(image_index ==  1)
	{
		global.spent_d -= 2;
	}
	else if(image_index ==  2)
	{
		global.spent_d -= 5;
	}
}
ds_map_destroy(p_map);