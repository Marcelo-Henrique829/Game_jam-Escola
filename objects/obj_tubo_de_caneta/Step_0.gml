/// @description Insert description here
// You can write your code in this editor

x = obj_player.x
y = obj_player.y

image_angle = point_direction(x,y,mouse_x,mouse_y)

if(mouse_check_button_pressed(mb_left) and can_shoot)
{
	instance_create_layer(x,y,"Bullet",obj_bullet)
	can_shoot=false
	alarm[0]=bullet_cooldown
}