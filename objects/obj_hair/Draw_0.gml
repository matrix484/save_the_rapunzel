/// @description Insert description here
if(!surface_exists(surf))
{
	surf = surface_create(sprite_width,sprite_height);
}

_y += global.spd;

surface_set_target(surf)
draw_clear_alpha(c_black,0);
draw_sprite_tiled(sprite_index,image_index,0,_y);
surface_reset_target();

draw_surface(surf,x-sprite_xoffset,y);