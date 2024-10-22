/// @description Insert description here
// You can write your code in this editor

//x+= lengthdir_x(20,_direcao) //esse código funciona mas parece ter um mini delay
//y+= lengthdir_y(20,_direcao) //esse código funciona mas parece ter um mini delay


if(place_meeting(x,y,colisores))
{
	anim = 2
	speed = 0
	instance_create_layer(x,y,"bullet",obj_bala_destroy)
}

switch(anim)
{
	case 1:
		sprite_index = spr_bullet;
	break
	
	
}