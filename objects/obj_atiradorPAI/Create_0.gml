
depth = 1
dano = global.baseStatus[2]
velTiro = global.baseStatus[4]
tempo_de_recarga = global.baseStatus[6]
debuff_hiv_active = false;  // Flag: O atirador está sob efeito do debuff?
original_velTiro = velTiro; // Variável para salvar o stat original
original_dano = dano;
original_Temp_RECARGA = tempo_de_recarga;

escolha33 = choose(160,180,200,220)
x = escolha33
posicao_X = x;

enum ESTADOS {
	
	SPAWN,
	PRONTOPARAATIRAR
	
}
estado = ESTADOS.SPAWN
destino_x = posicao_X + 32

