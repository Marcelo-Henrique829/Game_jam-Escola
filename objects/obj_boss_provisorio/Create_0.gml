/// @description Insert description here
// You can write your code in this editor



hspd = 0;
vspd = 0;


state = "movendo";
state_name = "parado"
danos_objetos = [obj_bullet,obj_ataque]
hit = false;
spd = 3
player_direction = 0;
distancia = 0;
tempo = 0;


perto_cooldown = game_get_speed(gamespeed_fps)*.5
can_punch = 0;

image_xscale = 2;
image_yscale = 2;