// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_iddle_boss(){
	
	var _player_direction  = point_direction(x,y,obj_player.x,obj_player.y)
	var _distancia = point_distance(x,y,obj_player.x,obj_player.y)
	sprite_index = spr_mcaco
	
	if(_distancia>= 100)
	{
		x += lengthdir_x(spd,_player_direction)
		y += lengthdir_y(spd,_player_direction)
	}
	
	show_debug_message(_distancia)
	state_name = "movendo"
	
}

function scr_boss_hit(){
	
		state_name = "Dano"
		sprite_index = spr_boss_hit
		
		if(image_index >= image_number - 1)
		{
			state = scr_iddle_boss;
		}

	
		
}