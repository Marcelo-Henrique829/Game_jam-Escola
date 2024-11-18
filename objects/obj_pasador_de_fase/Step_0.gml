/// @description Insert description here
// You can write your code in this editor

	

if(pode_passar)
{
	
		

		var _cx = camera_get_view_x(view_camera[0])
		var _cy = camera_get_view_y(view_camera[0])
		var _transicao = layer_sequence_create("transicao",_cx,_cy,sq_indo)
		layer_sequence_x(_transicao,_cx)
		layer_sequence_y(_transicao,_cy)
		global.destinto = destino
	
}