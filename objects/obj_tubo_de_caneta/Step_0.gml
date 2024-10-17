/// @description Insert description here
// You can write your code in this editor



if(global.usando_arma!=1) instance_destroy()




if(usando)
{
	
	seguindo_apontando()

	if(mouse_check_button_pressed(mb_left) and can_shoot)
	{
		instance_create_layer(x,y,"Bullet",obj_bullet)
		can_shoot=false
		alarm[0]=bullet_cooldown
	}
	
}

  