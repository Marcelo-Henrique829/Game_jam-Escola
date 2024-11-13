#region Iluminação

if surface_exists(sombra_surface){ // se existir, cria na camada sombra_surface
	
	surface_set_target(sombra_surface); // diz para o game maker desenhar em uma camada especifica

		draw_set_color(c_black); // diz a cor do quadrado
		draw_set_alpha(0.9); // opacidade do quadrado
		draw_rectangle(0, 0, room_width, room_height, false); // tamanho do quadrado
		
		
		gpu_set_blendmode(bm_subtract); //cria um "burraco"  na camada, simulando a luz
		
		if instance_exists(Obj_luz){ // código para luz em objetos especificos
		
			var _num = instance_number(Obj_luz); // verifica se existe o objeto 
			for (var i = 0; i = 1< _num; i++){
				var _inst = instance_find(Obj_luz, i);
				
				draw_set_alpha(0.8)
				draw_circle(_inst.x ,_inst.y, 50 + irandom(1) , false); // diz que o burraco é um circulo, o que ele segue e o tamanho (irandom(1) serve pra dar efeito)
				
				draw_set_alpha(0.4); //desenha um circula maior e mais escuro
				draw_circle(_inst.x ,_inst.y, 60 + irandom(1) , false);
			
			}
		
		}
		
		draw_circle(obj_player.x ,obj_player.y, 60 + irandom(1) , false); // diz que o burraco é um circulo, o que ele segue e o tamanho (irandom(1) serve pra dar efeito)
		draw_set_alpha(0.6); //desenha um circula maior e mais escuro
		draw_circle(obj_player.x ,obj_player.y, 70 + irandom(1) , false);
		gpu_set_blendmode(bm_normal);

		



	surface_reset_target(); //faz voltar a desenhar na camada principal
	
}else { // se não existir, re cria a camada (codigo pra evitar um bug especifico)

sombra_surface = surface_create(room_width,room_height);

}

draw_surface(sombra_surface,0,0);



#endregion