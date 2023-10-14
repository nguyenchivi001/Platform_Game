draw_sprite_ext(animation,image_index,x,y,image_xscale*huongnhin,image_yscale,0,c_white,1)

var dir = point_direction(x,y,mouse_x,mouse_y)

draw_sprite_ext(sWeapon,0,x,y,image_xscale,image_yscale,dir,image_blend,image_alpha)

