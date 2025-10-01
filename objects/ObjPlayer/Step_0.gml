//Pegando os Inputs do jogador
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

//Aplicandonos inputs à velocidade
velv = (down - up) *vel;
velh = (right - left) *vel;



//Rodando a máquina de estados 
roda_estado();