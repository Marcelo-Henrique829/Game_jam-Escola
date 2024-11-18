/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_boss_provisorio)) exit


var _player_direction = point_direction(x,y,obj_player.x,obj_player.y)
var _distancia = point_distance(x,y,obj_player.x,obj_player.y)

if(_player_direction>=90 and _player_direction<= 270)
{
	image_yscale = -1
}
else
{
	image_yscale = 1

}
image_angle = lerp(image_angle,_player_direction,0.08)

if(pode_meter_chumbo == true and _distancia >=200)
{
		if(obj_boss_provisorio.segunda_fase==0)
		{
			var _inst_1  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_1.direction = _player_direction-20
			_inst_1.speed = 15
			
			var _inst_2  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_2.direction = _player_direction
			_inst_2.speed = 15
			
			var _inst_3  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_3.direction = _player_direction+20
			_inst_3.speed = 15
		}
		else
		{
			var _inst_1  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_1.direction = _player_direction-20
			_inst_1.speed = 10
			
			var _inst_2  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_2.direction = _player_direction
			_inst_2.speed = 10
			
			var _inst_3  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_3.direction = _player_direction+20
			_inst_3.speed = 10
			cooldown = game_get_speed(gamespeed_fps)*0.5

		}
		
		
	alarm[0] = cooldown
	pode_meter_chumbo = false
 }