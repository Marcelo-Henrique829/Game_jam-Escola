/// @description Insert description here
// You can write your code in this editor

var _player_direction = point_direction(x,y,obj_player.x,obj_player.y)
var _distancia = point_distance(x,y,obj_player.x,obj_player.y)


x = objeto_boss_provisorio.x
y = objeto_boss_provisorio.y

image_angle = lerp(image_angle,_player_direction,0.08)

if(pode_meter_chumbo == true and _distancia >=100)
{
		
			var _inst_1  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_1.direction = _player_direction-20
			_inst_1.speed = 20
			
			var _inst_2  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_2.direction = _player_direction
			_inst_2.speed = 20
			
			var _inst_3  = instance_create_layer(x,y,"bullet",obj_bullet_boss)
			_inst_3.direction = _player_direction+20
			_inst_3.speed = 20

	
	pode_meter_chumbo = false
	alarm[0] = cooldown
 }