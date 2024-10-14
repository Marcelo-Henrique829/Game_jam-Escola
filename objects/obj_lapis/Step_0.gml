/// @description Insert description here
// You can write your code in this editor
arma = id


var _dir =  point_direction(x,y,mouse_x,mouse_y)




if(mouse_check_button_pressed(mb_left))
{
	if(!instance_exists(obj_ataque))
	{
		instance_create_layer(x + lengthdir_x(sprite_width,_dir),y + lengthdir_y(sprite_height,_dir),layer,obj_ataque)
	}
}

 // essa putaria que eu fiz sever para criar a instancia "ataque" à frente do objeto e não dentro do objeto