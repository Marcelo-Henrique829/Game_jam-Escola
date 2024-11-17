// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.destinto = 0

function transicao(){
	
	room_goto(global.destinto)
	global.destinto = 0;

}


function scr_trasicao()
{
	var _cx = camera_get_view_x(view_camera[0])
	var _cy = camera_get_view_y(view_camera[0])
	var _transicao = layer_sequence_create("transicao",_cx,_cy,sq_voltando)
	layer_sequence_x(_transicao,_cx)
	layer_sequence_y(_transicao,_cy)
}