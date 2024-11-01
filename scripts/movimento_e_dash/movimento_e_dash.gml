// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_anim()
{



	switch(direcao)
	{
		case 0:
			sprite_index = spr_player_iddle_lado_direito
		break
		
		case 90:
			sprite_index = spr_player_iddle_cima
		break;
		
		case 180:
			sprite_index = spr_player_iddle_lado_esquerdo
		break;
		case 270:
			sprite_index = spr_player_frente_iddlle
		break;
	}
	
}




#endregion


	
	
function scr_move_colision(_objetos = [])
{
	var _hspd = sign(hspd) // retornando um valor positivo ou negativo de hspd
	var _vspd = sign(vspd)// retornando um valor positivo ou negativo de vspd


repeat(abs(hspd))
{
	if(place_meeting(x+_hspd,y,_objetos))
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
	if(place_meeting(x,y+_vspd,_objetos))
	{
		vspd = 0
	}
	else
	{
		y+=_vspd
	}
}
}





