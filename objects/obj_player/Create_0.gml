/// @description iniciando variáveis
// You can write your code in this editor


#region variáveis de movimento

hspd = 0;//velocidade horizontal
vspd = 0;//velocidade vertical
spd=5;//velocidade
max_spd =10;//velocidade máxima
direcao = 0;//direção em que o jogador está apertando
anim = 0

#endregion
mask_index = spr_player_colisao

#region variáveis para o dash

dash_distance = 10; //tempo maximo/distancia que o dash percorre
dash_time = 0; //tempo de duração do dash
dash_spd = 20;//velocidado dash
dash_cooldown = room_speed //tempo que o jogador deve esperar para realizar outro dash
can_dash = true;//variável que determina se o jogador pode ou não usar o dash

#endregion
 
 
 image_xscale = .5
 image_yscale = .5
  

window_set_cursor(cr_none) //sumindo com o ponteiro original do mouse
 
mouse_anim = 1

state = scr_move; //começando com o esquema de movimentação



//por algum motivo a porra desse código só funciona assim. Não pergunte o porque apenas agradeça que funciona
usando_arma = function()
{
	var _dir =  point_direction(x,y,mouse_x,mouse_y)
	var _x = x + lengthdir_x(sprite_width-20,_dir)
	var _y = y + lengthdir_y(sprite_height-20,_dir)
	
	obj_lapis.x = _x
	obj_lapis.y = _y
	obj_lapis.image_angle = _dir
}

troca_arma = function()
{
	if(keyboard_check(ord("Q")))
	{
		global.usando_arma = 1
	}
	
	if(keyboard_check(ord("E")))
	{
		global.usando_arma = 2
	}
	
	if(global.usando_arma == 1 and !instance_exists(obj_tubo_de_caneta))
	{
		instance_create_layer(x,y,"armas",obj_tubo_de_caneta)
	}
	
	if(global.usando_arma == 2 and !instance_exists(obj_lapis))
	{
		instance_create_layer(x,y,"armas",obj_lapis)
	}
	
	
	if(global.usando_arma == 2 and instance_exists(obj_ataque))
	{
		spd = 0
	}
	else
	{
		//spd = 5
	}
}


