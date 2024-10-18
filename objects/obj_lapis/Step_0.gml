/// @description Insert description here
// You can write your code in this editor
arma = id


var _dir =  point_direction(x,y,mouse_x,mouse_y)

if(global.usando_arma!=1) instance_destroy()



if(mouse_check_button_pressed(mb_left))
{

	
	if(!instance_exists(obj_ataque))
	{
		instance_create_layer(x + lengthdir_x(sprite_width-10,_dir),y + lengthdir_y(sprite_height+20,_dir),layer,obj_ataque)
		
	}
	else
	{
	}
}

