//Criando as variáveis

//Iniciando meus estados
estado_idle = new estado();
estado_walk = new estado();

#region estado idle
estado_idle.inicia = function(){
	sprite_index = player_idle_front;
	image_index = 0;	
}
estado_idle.roda = function(){

	if(velh != 0 or velv != 0){
		troca_estado(estado_walk);
	}
};
#endregion

#region estado walk
estado_walk.inicia = function(){
	sprite_index = player_walk_front;
	image_index = 0;
};
estado_walk.roda = function(){
	
	
	if(velh == 0 && velv== 0){
		troca_estado(estado_idle)
	}
};
#endregion
//Controles
up = noone;
down = noone;
left = noone;
right = noone;

velh = 0; // Velocidade na horizontal
velv = 0; // Velocidade na vertical

vel = 3; //Velocidade 

//Iniciando a máquina de estados
inicia_estado(estado_idle);