// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_anim()
{

	switch(direcao)
	{
		case 0:
			sprite_index = spr_player_iddle_lado_direito
		break;
		
		case 180:
			sprite_index = spr_player_iddle_lado_esquerdo
		break;
		case 270:
			sprite_index = spr_player_frente_iddlle
		break;
	}
	
}



function scr_move(){
	
	
	
#region inputs vulgo controles

	var _left = keyboard_check(ord("A"));
	var _rigth = keyboard_check(ord("D"));
	var _up = keyboard_check(ord("W"));
	var _down = keyboard_check(ord("S"));
	var _dash = keyboard_check(vk_space)

#endregion

#region movimentos irados do balacobaco

 
	
 
		hspd = lengthdir_x(spd,direcao);
		vspd = lengthdir_y(spd,direcao);

	if(_left !=0 or _rigth !=0 or _up !=0 or _down !=0)//verficando se ele está apertando alguma se sim o sistema deixa ele andar se não ele fica parado
	{
		spd = 5
		direcao = point_direction(0,0,(_rigth - _left),(_down - _up)) //descobrindo a direção em que o jogador está apertando	
	}
	else
	{
		spd  = 0
	}
#region ativando o estado de dash
	if(_dash and can_dash)
	{
		can_dash = false
		alarm[0] = dash_cooldown
		hspd = 0
		vspd = 0
		state = scr_dash
		
	}
#endregion



	if(_left and _rigth or _down and _up) spd = 0 //SE O JOGADOR ESTIVER APERTANDO MAIS DE UM BOTÃO ELE PARA DE SE MOVER
	
	
#endregion

}
	
	
function scr_move_colision(_obj_name)
{
	var _hspd = sign(hspd) // retornando um valor positivo ou negativo de hspd
	var _vspd = sign(vspd)// retornando um valor positivo ou negativo de vspd


repeat(abs(hspd))
{
	if(place_meeting(x+_hspd,y,_obj_name))
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
	if(place_meeting(x,y+_vspd,_obj_name))
	{
		vspd = 0
	}
	else
	{
		y+=_vspd
	}
}
}


function scr_dash()
{
	hspd = lengthdir_x(dash_spd,direcao)
	vspd = lengthdir_y(dash_spd,direcao)
	dash_time++

	
	
	if(dash_time>=10)
	{
		state=scr_move;
		dash_time = 0;
		//image_speed = 0;
	}
}


