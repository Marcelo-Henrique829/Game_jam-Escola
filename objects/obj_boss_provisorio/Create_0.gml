/// @description Insert description here
// You can write your code in this editor


#region variáveis de movimento
	hspd = 0;
	vspd = 0;
	spd = 3;
#endregion

#region variáveis de estado
	state = "movendo";
	state_name = "parado"
	hit = false;
	danos_objetos = [obj_bullet,obj_ataque]
	perto_cooldown = game_get_speed(gamespeed_fps)*.5;
	tempo = 0;
	player_direction = 0;
	distancia = 0;
	can_punch = 0;
	
	segunda_fase = 0;
	pode_segunda_fase = 1;

#endregion

arma = 0;


image_xscale = 1; //tamanho do bixo
image_yscale = 1; //tamanho do bixo

usando_arma_1 = function()
{
	if(!segunda_fase)
	{
		obj_arma.x = x
		obj_arma.y = y
	}
	else
	{
		obj_arma.x = x - sprite_width + 90
		obj_arma.y = y

	}
}

usando_arma_2 = function()
{
	if(!instance_exists(obj_arma_2))
	{
		arma = instance_create_layer(x,y,"armas",obj_arma_2)
		
	}
	
		arma.x = x + sprite_width - 90
		arma.y = y
	
}



