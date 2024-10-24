/// @description Insert description here
// You can write your code in this editor
tela_largura = camera_get_view_width(view_camera[0])
tela_altura = camera_get_view_height(view_camera[0])
display_set_gui_size(tela_largura,tela_altura);



life_max = 400;
life = life_max;
life_feedback = life_max;


life_barw = 700;
life_barh = 30;
cor_1 = c_red;
cor_2 = c_black;
cor_3 = c_white;