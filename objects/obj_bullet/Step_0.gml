/// @description Insert description here
// You can write your code in this editor

//x+= lengthdir_x(20,_direcao) //esse código funciona mas parece ter um mini delay
//y+= lengthdir_y(20,_direcao) //esse código funciona mas parece ter um mini delay


if(place_meeting(x,y,obj_parede))
{
	anim = 2
	speed = 0
}

switch(anim)
{
	case 1:
		sprite_index = spr_bullet;
	break
	
	case 2:
		sprite_index = spr_bullet_destroy;
		
		if(image_index >= image_number-1) instance_destroy()
	break;
}