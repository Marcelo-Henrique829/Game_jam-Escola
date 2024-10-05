/// @description iniciando variáveis
// You can write your code in this editor

hspd = 0;//velocidade horizontal
vspd = 0;//velocidade vertical
spd=5;//velocidade
max_spd =10;//velocidade máxima
direcao = 0;//direção em que o jogador está apertando 

window_set_cursor(cr_none) //sumindo com o ponteiro original do mouse

mouse_anim = 1

//eu vou usar muito essa variável
state = scr_move; //começando com o esquema de movimentação



#region variáveis para o dash

dash_distance = 10; //tempo maximo/distancia que o dash percorre
dash_time = 0; //tempo de duração do dash
dash_spd = 20;//velocidado dash
dash_cooldown = room_speed*2 //tempo que o jogador deve esperar para realizar outro dash
can_dash = true;//variável que determina se o jogador pode ou não usar o dash

#endregion