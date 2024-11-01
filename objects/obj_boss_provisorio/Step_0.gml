    /// @description Insert description here
// You can write your code in this editor

player_direction  = point_direction(x,y,obj_player.x,obj_player.y)
distancia = point_distance(x,y,obj_player.x,obj_player.y)
show_debug_message(tempo)

switch(state)
{
	case "movendo":
		{
	
			sprite_index = spr_mcaco
	
			if(distancia>= 100)
			{
				x += lengthdir_x(spd,player_direction)
				y += lengthdir_y(spd,player_direction)
				tempo = perto_cooldown;
			}
			else
			{
				
				tempo--
				if(tempo<=0) 
				{
					state = "ataque_perto"
					can_punch = 0;
				}
				
			}
			
		
		}
	break;
	
	case "hit":
	{
		sprite_index = spr_boss_hit
		tempo--
		if(image_index >= image_number - 1)
		{
			state = "movendo";
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
			
			tempo = perto_cooldown
							
			if(obj_ataque_boss.image_index >= image_number-1) 
			{
				state = "movendo"
			}
		}
	
	
	break;
}



 