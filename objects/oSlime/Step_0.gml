
if instance_exists(oPlayer)
{
	if (distance_to_object(oPlayer) < 40)
	{
		mp_potential_step_object(oPlayer.x,oPlayer.y,0.25,oWall)
	}
	else mp_potential_step_object(x_local,y_local,0.25,oWall)
}



if (direction > 90) and (direction < 270) {
    // enemy đang đi về bên trái
    image_xscale = -1; // lật sprite theo chiều ngang
} else {
    // enemy đang đi về bên phải
    image_xscale = 1; // giữ nguyên sprite
}








