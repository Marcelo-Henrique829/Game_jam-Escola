/// @description Insert description here
// You can write your code in this editor

#region inputs vulgo controles

var _left = keyboard_check(ord("A"));
var _rigth = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

#endregion

#region movimentos irados do balacobaco
 
direcao = point_direction(0,0,(_rigth - _left),(_down - _up)) //descobrindo a direção em que o jogador está apertando


if(_left !=0 or _rigth !=0 or _up !=0 or _down !=0)//verficando se ele está apertando alguma se sim o sistema deixa ele andar se não ele fica parado
{
	hspd = lengthdir_x(spd,direcao);
	vspd = lengthdir_y(spd,direcao);
}
else
{
	hspd = lengthdir_x(spd*0,direcao);
	vspd = lengthdir_y(spd*0,direcao);
}

#endregion


//x+=hspd
//y+=vspd

