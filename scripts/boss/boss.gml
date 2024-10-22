// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_iddle_boss(){
	
	sprite_index = spr_mcaco
	state_name = "parado"
}

function scr_boss_hit(){
	
		state_name = "Dano"
		sprite_index = spr_boss_hit
		
		if(image_index >= image_number - 1)
		{
			state = scr_iddle_boss;
		}

	
		
}