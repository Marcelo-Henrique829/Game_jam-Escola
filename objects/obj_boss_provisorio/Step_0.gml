    /// @description Insert description here
// You can write your code in this editor




if(obj_barra_de_vida.life<=obj_barra_de_vida.life_max/2 and pode_segunda_fase)
{
	pode_segunda_fase = 0;
	segunda_fase = 1;
	state = "segunda_fase"
}






if(state!="morte")
{
	usando_arma_1()
	
	if(segunda_fase)
	{
		usando_arma_2()
	}
}


player_direction  = point_direction(x,y,obj_player.x,obj_player.y)
distancia = point_distance(x,y,obj_player.x,obj_player.y)
show_debug_message(tempo)

if(obj_barra_de_vida.life<=0)
{
	state = "morte"
}

switch(state)
{
	case "movendo":
		{
	
			sprite_index = spr_boss_direito
	
			if(distancia>= 200)
			{
				hspd = lengthdir_x(spd,player_direction)
				vspd = lengthdir_y(spd,player_direction)
				
				tempo = perto_cooldown;
			}
			else
			{
				hspd =0;
				vspd =0;
				
					state = "ataque_perto"
					can_punch = 0;
			}
			
		
		}
	break;
	
	case "hit":
	{
		sprite_index = spr_boss_hit


		if(image_index >= image_number - 1)
		{
			if(!segunda_fase) state = "movendo";
			else state = "segunda_fase"

		}
	}
	break;

	case "ataque_perto":
		{
				if(!instance_exists(obj_ataque_boss))
				{
					instance_create_layer(x+lengthdir_x(sprite_width-20,player_direction),y+lengthdir_y(sprite_height-20,player_direction),"bullet",obj_ataque_boss)
					obj_ataque_boss.image_angle = player_direction - 90	
				}
							
			if(obj_ataque_boss.image_index >= image_number-1) 
			{
				state = "movendo"
			}
		}
	
	
	break;
	
	case "morte":
	{

			instance_destroy(obj_arma)
			instance_destroy(obj_arma_2)

		
		sprite_index = spr_boss_destroy
		if(image_index>= image_number -1)
		{
			instance_destroy()
		}
			
	}
	break;
	
	
	case "segunda_fase":
	{
		sprite_index = spr_boss_esquerdo
		
		hspd = 0;
		vspd = 0;
		
	}
	break
}



 