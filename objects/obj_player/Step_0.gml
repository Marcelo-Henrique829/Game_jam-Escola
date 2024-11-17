 /// @description  Código que roda a cada segundo. eu vou viver das minhas funções
// You can write your code in this editor


scr_anim()//O script e que lida com as animações/
troca_arma()//código que faz trocar de arma

#region animação de clicar do ponteiro do mouse

if(mouse_check_button(mb_left)) mouse_anim = 1
else mouse_anim = 2
#endregion

if(instance_exists(obj_lapis)) //ele só usa a arma se a arma existir
{
	usando_arma()
}


show_debug_message(spd)

switch(state)
{
	case "movendo":
	{
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
			spd = max_spd
			
			direcao = point_direction(0,0,(_rigth - _left),(_down - _up)) //descobrindo a direção em que o jogador está apertando	
		}
		else
		{
			spd  = 0
		}
		
		
		if(_left and _rigth or _down and _up) spd = 0 //SE O JOGADOR ESTIVER APERTANDO MAIS DE UM BOTÃO ELE PARA DE SE MOVER
		
	#endregion
	
		#region ativando o estado de dash
		if(_dash and can_dash)
		{
			can_dash = false
			alarm[0] = dash_cooldown
			hspd = 0
			vspd = 0
			state = "dash"
		
		}
	#endregion


			
		#region ativando o estado de hit
		
			if(place_meeting(x,y,causadores_de_dano))
			{
				obj_life_bar.life+=global.boss_sword
				state = "hit";
			}
			
		#endregion
	}
		
		
	break;
	
	
	case"dash":
	{
		hspd = lengthdir_x(dash_spd,direcao)
		vspd = lengthdir_y(dash_spd,direcao)
		dash_time++

	
	
		if(dash_time>=10)
		{
			state="movendo";
			dash_time = 0;
		}
	}
	break;
	
	case "hit":
	{
		if(instance_exists(obj_boss_provisorio))
		{
			var _direction = point_direction(x,y,obj_boss_provisorio.x,obj_boss_provisorio.y)
			hspd += lengthdir_x(2,_direction+180)
			vspd += lengthdir_y(2,_direction+180)
		}
		else
		{
			hspd = 0
			vspd = 0
		}
		
		sprite_index = spr_player_iddle_hit
		
		hit_time--
		
		if(hit_time<=0)
		{
			state = "movendo";
			hit_time = hit_cooldown
		}
	}
	break;
}

#region Chaves
if place_meeting(x,y,obj_chave1){ //se encostar pega e some

	global.chave_1 = 1;
	instance_destroy(obj_chave1)
}


if place_meeting(x,y,obj_chave2){ //se encostar pega e some

	global.chave_2 = 1;
	instance_destroy(obj_chave2)
}



if place_meeting(x,y,obj_chave3){ //se encostar pega e some

	global.chave_3 = 1;
	instance_destroy(obj_chave3)
}

#endregion
