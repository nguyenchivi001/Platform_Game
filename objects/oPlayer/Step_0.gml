// move
if keyboard_check(ord("A")) || keyboard_check(vk_left)
{
	hspeed = -3
	if animation == sPlayer_Stand
	{
		animation = sPlayer_Move
	}
	huongnhin = -1
}
if keyboard_check(ord("D")) || keyboard_check(vk_right)
{
	hspeed = 3
	if animation == sPlayer_Stand
	{
		animation = sPlayer_Move
	}
	huongnhin = 1
}

//if keyboard_check_released(ord("A")) {hspeed = 0}
//if keyboard_check_released(ord("D")) {hspeed = 0}

//jump
if keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up) /*&& instance_position(x,y+17,oWall)*/ // chỉ kiểm tra 1 lần 
{
	vspeed = -10
}

// collision and gravity
if !place_meeting(x,y+13,oWall)
{
	vspeed = vspeed + g
	if vspeed > 16
	{
		vspeed = 16
	} // giới hạn tốc độ bằng với độ lớn của wall
	animation = sPlayer_Jump
}

if place_meeting(x,y+vspeed,oWall)
{
	while !place_meeting(x,y+sign(vspeed),oWall)
	{
		y+=sign(vspeed)
	}
	vspeed = 0
	animation = sPlayer_Stand
}

if place_meeting(x+hspeed,y,oWall)
{
	while !place_meeting(x+sign(hspeed),y,oWall)
	{
		x+=sign(hspeed)
	}
	hspeed = 0
	animation = sPlayer_Stand
}

//inherit
hspeed = hspeed * 0.8
if(abs(hspeed) < 0.25) 
{
	hspeed = 0
	if animation = sPlayer_Move
	{
		animation = sPlayer_Stand
	}
}

if mouse_check_button_pressed(mb_left) && canFire == true
{
        instance_create_layer(x, y, "Instances", oBullet)
		canFire = false
		oPlayer.alarm[0] = 15
}

if (bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height)
{
	instance_destroy(); 
}