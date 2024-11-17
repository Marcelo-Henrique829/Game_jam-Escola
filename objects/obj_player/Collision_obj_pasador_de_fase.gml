/// @description Insert description here
// You can write your code in this editor
if(room == rm_corredor)
{ 
	global.player_x = x;
	if(obj_pasador_de_fase.cima)
	{
		global.player_y = y + 50;
	}
	else
	{
		global.player_y = y - 50;
	}
}