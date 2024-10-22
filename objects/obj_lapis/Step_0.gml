/// @description Insert description here
// You can write your code in this editor

//arma = id

var _dir =  point_direction(x,y,mouse_x,mouse_y)

if(global.usando_arma!=2) instance_destroy()


	if(pode_atacar and mouse_check_button_pressed(mb_left) )
	{
		instance_create_layer(x + lengthdir_x(sprite_width,_dir),y + lengthdir_y(sprite_height+10,_dir),layer,obj_ataque)
		pode_atacar = false
		alarm[0] = coldown
	}
	
	show_debug_message(pode_atacar)
	
	