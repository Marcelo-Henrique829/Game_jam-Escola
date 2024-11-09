// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#region DANO DAS ARMAS

global.player_bullet = 10;
global.boss_bullet = 0;
global.boss_sword = 0;
global.player_sword = 1;




#endregion





function seguindo_apontando(){
	
	x = obj_player.x
	y = obj_player.y
	image_angle =  point_direction(x,y,mouse_x,mouse_y)
	
}




global.usando_arma = 1;