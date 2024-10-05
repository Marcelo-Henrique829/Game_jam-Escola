// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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

	if(_dash and can_dash)
	{
		can_dash = false
		alarm[0] = dash_cooldown
		hspd = 0
		vspd = 0
		state = scr_dash
		
	}

	if(_left and _rigth or _down and _up) spd = 0
	
	
#endregion

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
	}
}