if(global.upouDeNivel == false)
{
	
	switch(estado)
	{

		case ESTADOS.SPAWN:
		{
			//ele ir pra frente quando spawna
			x = lerp(x,destino_x,.1)
			
			
			if(x >= destino_x -2)
			{//se ele estiver quase na posição certa
				//vai para a posição certa
				x = destino_x
			//troca de estado
			estado = ESTADOS.PRONTOPARAATIRAR
			}
			break
		}
	
		case ESTADOS.PRONTOPARAATIRAR:
		{
			if (global.mira_ID != noone && instance_exists(global.mira_ID) && global.mira_ID.object_index == obj_Herpesvirus) {
			    if (variable_instance_exists(global.mira_ID, "estado") && global.mira_ID.estado == ESTADO.INVISIVEL) {
			        global.mira_ID = noone; // Força o descarte
				}
			}

// Agora, o bloco if (mira_id == noone || !instance_exists(mira_id)) será acionado.
if (global.mira_ID == noone || !instance_exists(global.mira_ID)) {
    // Apenas procura por um novo alvo se o atual não existir ou se a mira estiver zerada
    if (global.mira_ID == noone || !instance_exists(global.mira_ID)) {
        
        var inimigo_mais_proximo_visivel = noone;
        var menor_distancia = infinity;
        
        // Itera sobre todos os inimigos
        with (obj_PaiInimigo) {
            
            // Assume que o inimigo está visível por padrão
            var esta_visivel = true;
            
            // --- VERIFICAÇÃO DE INVISIBILIDADE COM SEGURANÇA ---
            
            // 1. Checa se esta instância (o inimigo) possui a variável 'estado'
            if (variable_instance_exists(id, "estado")) {
                
                // 2. Se for um Herpesvirus E se a variável 'estado' for ESTADO.INVISIVEL, 
                //    forçamos a visibilidade para FALSE.
                if (object_index == obj_Herpesvirus) {
                    // É importante garantir que o enum ESTADO esteja acessível (ex: global.ESTADO)
                    // Se o estado for 'ESTADO.INVISIVEL' (o valor numérico do enum)
                    if (estado == ESTADO.INVISIVEL) {
                        esta_visivel = false;
                    }
                }
            }
            
            // 3. Se o inimigo for considerado visível, procedemos com a busca
            if (esta_visivel) {
                var dist = distance_to_point(other.x, other.y); // 'other' é o atirador
                
                if (dist < menor_distancia) {
                    menor_distancia = dist;
                    inimigo_mais_proximo_visivel = id; // id da instância do inimigo atual
                }
            }
        } // Fim do with (obj_PaiInimigo)
        
	
        // Atribui o alvo encontrado (pode ser noone se não houver alvos visíveis)
        global.mira_ID = inimigo_mais_proximo_visivel;
    }
}


			if (global.mira_ID != noone && instance_exists(global.mira_ID)) {
    
			    // Calcula o ângulo em graus do atirador (x, y) para o alvo (target_id.x, target_id.y)
			    var dir_para_alvo = point_direction(x, y, global.mira_ID.x, global.mira_ID.y);
    
	
			    // Faz o sprite do atirador girar para apontar para o alvo
			    self.image_angle = dir_para_alvo;
			
				tempo_de_recarga--;
				if(tempo_de_recarga <= 0 && global.mira_ID != noone)
				{
					
					show_debug_message("ATIREI")
					show_debug_message(string(global.baseStatus[4]))
					show_debug_message(string(global.baseStatus[6]))
					var _bala = instance_create_layer(x,y,"lyr_base",obj_municao)
					_bala.direction = dir_para_alvo
					_bala.image_angle = dir_para_alvo;
					_bala.speed = velTiro
				
		
					tempo_de_recarga = global.baseStatus[6];
				}else if(global.mira_ID != noone)
				{
					sprite_index = spr_atirador_atirando;
				}else
				{
					sprite_index = spr_atirador;
				}
	
			}
			break
		}
	}
}