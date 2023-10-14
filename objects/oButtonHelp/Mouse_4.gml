
event_inherited();

if instance_exists(oControl)
{
	instance_destroy(oControl)
}
else
{
	instance_create_layer(room_width / 2, room_height - 35 , "Instances",oControl)
}