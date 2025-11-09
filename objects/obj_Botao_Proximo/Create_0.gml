enum ESTADO_TRANSICAO {
    PARADO,
    SAIDA,      // Animação de descida do upgrade atual
    ENTRADA     // Animação de subida do novo upgrade
}

estado = ESTADO_TRANSICAO.PARADO;
direcao = 0; // -1: Esquerda, 1: Direita (Próximo)
instancia_atual = noone; // Variável para guardar o ID da instância do upgrade visível

// Cria a instância inicial do upgrade
instancia_atual = instance_create_layer(room_width/2, 180, layer, obj_WikiUpgrades);