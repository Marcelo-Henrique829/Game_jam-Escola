/// @description Insert description here
// You can write your code in this editor


//switch (state)
//{
//	case place_meeting():
		
//		state = scr_boss_hit;
		
//	break
		
		
//}


if(place_meeting(x,y,danos_objetos))
{
	
	state = scr_boss_hit;
	hit = true
	instance_destroy(obj_bullet)


}

if(hit)
{
	hit = false
	image_index = 1
	
}

state()
 