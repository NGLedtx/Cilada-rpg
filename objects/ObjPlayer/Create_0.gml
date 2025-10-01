//Criando as variáveis

//Iniciando meus estados
estado_idle = new estado();
estado_walk = new estado();

#region estado idle
estado_idle.inicia = function(){
	
	//Direção que estou olhando
	var _sprite = define_sprite(dir, player_idle_right_left, player_idle_front, player_idle_back);
	
	sprite_index = _sprite;
	image_index = 0;	
}
estado_idle.roda = function(){

	if(up or down or left or right){
		troca_estado(estado_walk);
	}
};
#endregion

#region estado walk
estado_walk.inicia = function(){
	dir = (point_direction(0, 0, right - left, down - up) div 90)
	
	sprite_index = define_sprite(dir, player_walk_right_left, player_walk_front, player_walk_back);
	image_index = 0;
};
estado_walk.roda = function(){
	
	if(velh != 0){
		image_xscale = sign(velh);
	} 
	
	velv = (down - up) *vel;
	velh = (right - left) *vel;
	if(velh == 0 && velv== 0){
		troca_estado(estado_idle);
	}
};
#endregion
#region iniciando variáveis
//Controles
up = noone;
down = noone;
left = noone;
right = noone;

velh = 0; // Velocidade na horizontal
velv = 0; // Velocidade na vertical

vel = 3; //Velocidade 

//Controlando onde o personagem está olhando
dir = 0;
#endregion
//Iniciando a máquina de estados
inicia_estado(estado_idle);