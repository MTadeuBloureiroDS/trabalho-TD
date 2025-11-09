// Evento Step do obj_Botao_Proximo

// ----------------------------------------------------
// 1. LÓGICA DE CLIQUE (Ativa a transição)
// ----------------------------------------------------
// Se o botão foi clicado E não está em transição
if (mouse_check_button_pressed(mb_left) && estado == ESTADO_TRANSICAO.PARADO) 
{
    // ... (Sua lógica para determinar a direção e que o clique foi no botão) ...
    // Vou simular a direção 1 (Direita) aqui:
    direcao = 1;
	global.cliques++;
    estado = ESTADO_TRANSICAO.SAIDA;
}


// ----------------------------------------------------
// 2. MÁQUINA DE ESTADOS
// ----------------------------------------------------

switch (estado) 
{
    case ESTADO_TRANSICAO.PARADO:
        // Não faz nada, aguarda clique.
        break;

    case ESTADO_TRANSICAO.SAIDA:
        // A. AQUI o 'instancia_atual' GUARDA o ID do objeto que está saindo!
        if (instance_exists(instancia_atual)) 
        {
            // Efeito de descer e diminuir
            instancia_atual.y = lerp(instancia_atual.y, room_height + 140, 0.08); 
            instancia_atual.image_xscale = lerp(instancia_atual.image_xscale, 0.5, 0.08); 
            instancia_atual.image_yscale = lerp(instancia_atual.image_yscale, 0.5, 0.08);
            
            // B. Checa se a animação terminou
            if (instancia_atual.y >= room_height + 100) 
            {
                var proximo_index = instancia_atual.upgrade_index + direcao; // Calcula o novo index
                
                // Destrói o objeto antigo
                instance_destroy(instancia_atual);
                
                // Cria a nova instância (que será controlada pelo estado ENTRADA)
                // Ela começa FORA da tela, na posição de onde virá.
                instancia_atual = instance_create_layer(room_width/2, -128, layer, obj_WikiUpgrades);
                
                // Define o índice do novo upgrade
                instancia_atual.upgrade_index = proximo_index;
                
                // Muda o estado para a próxima fase
                estado = ESTADO_TRANSICAO.ENTRADA;
            }
        }
        break;

    case ESTADO_TRANSICAO.ENTRADA:
        // A. AQUI o 'instancia_atual' GUARDA o ID do novo objeto!
        if (instance_exists(instancia_atual)) 
        {
            // Posição de destino final
            var pos_final_y = 180; 
            
            // Efeito de subir e expandir (o inverso da saída)
            instancia_atual.y = lerp(instancia_atual.y, pos_final_y, 0.15); 
            instancia_atual.image_xscale = lerp(instancia_atual.image_xscale, 1, 0.15); 
            instancia_atual.image_yscale = lerp(instancia_atual.image_yscale, 1, 0.15);
            
            // B. Checa se a animação terminou (Se a posição está perto da final)
            if (instancia_atual.y >= pos_final_y - 1) 
            {
                instancia_atual.y = pos_final_y; // Garante a posição exata
                
                // Fim da transição
                estado = ESTADO_TRANSICAO.PARADO; 
                direcao = 0;
            }
        }
        break;
}