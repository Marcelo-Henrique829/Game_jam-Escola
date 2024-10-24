resolution_width = 1024 // resolução padrão
resolution_height = 576 // resolução padrão
resolution_scale = 1.5; //escala da resolução da camera
global.view_width = resolution_width / resolution_scale; // definindo o tamanho do width da camera
global.view_height = resolution_height / resolution_scale; //definindo o tamanho do height da camera
alvo = obj_player; //definindo o alvo da camera
vel_cam = 0.1 //velocidade na qual a camera segue o personagem(só pra ficar bonitinho msm)

window_set_size(global.view_width * resolution_scale, global.view_height * resolution_scale); //definindo o tamanho da janela
surface_resize(application_surface, global.view_width * resolution_scale, global.view_height * resolution_scale) //aplicando a resolução pra superficie do jogo