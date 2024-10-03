/// @description Insert description here
// You can write your code in this editor


#region colisão e permissão de movimento


var _hspd = sign(hspd) // retornando um valor positivo ou negativo de hspd
var _vspd = sign(vspd)// retornando um valor positivo ou negativo de vspd

repeat(abs(hspd))
{
	if(place_meeting(x+_hspd,y,obj_parede))
	{
		hspd = 0
	}
	else
	{
		x+=_hspd
	}
}
repeat(abs(vspd))
{
	if(place_meeting(x,y+_vspd,obj_parede))
	{
		vspd = 0
	}
	else
	{
		y+=_vspd
	}
}

#endregion