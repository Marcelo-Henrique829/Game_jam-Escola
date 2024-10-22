 /// @description  Código que roda a cada segundo. eu vou viver das minhas funções
// You can write your code in this editor


scr_anim()//O script e que lida com as animações
troca_arma()//código que faz trocar de arma
state() //executando a função do momento


#region animação de clicar do ponteiro do mouse

if(mouse_check_button(mb_left)) mouse_anim = 1
else mouse_anim = 2 

#endregion

if(instance_exists(obj_lapis)) //ele só usa a arma se a arma existir
{
	usando_arma()
}



