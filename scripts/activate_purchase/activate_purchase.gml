var purchaseList = ds_list_create();

//Purchase
var purchase1 = ds_map_create();
ds_map_add(purchase1,"id",argument0);
ds_map_add(purchase1,"description","Alternate Skin");
ds_map_add(purchase1,"price","$1.00");
ds_list_add(purchaseList, purchase1);

//Activate and Clean Up
iap_activate(purchaseList);
ds_map_destroy(purchase1);
ds_list_destroy(purchaseList);