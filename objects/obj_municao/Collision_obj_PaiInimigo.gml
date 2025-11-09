if(global.upouDeNivel == false)
{
	
	// EVENTO DE COLISÃO: obj_municao com obj_PaiInimigo (CÓDIGO CORRETO)

// Por segurança, checa se o 'other' (o inimigo atingido) existe
if (instance_exists(other)) {

    // --- 1. VERIFICA SE O ALVO ATINGIDO TEM UMA CONDIÇÃO DE INVISIBILIDADE ---
    
    // Checa se o alvo atingido é o Herpesvirus (que tem a regra de invisibilidade)
    if (other.object_index == obj_Herpesvirus) {
        
        // Checa se o Herpesvirus está no estado de invulnerabilidade/invisibilidade
        if (other.estado == ESTADO.INVISIVEL) {
            
            // Se estiver invisível, DESTRÓI APENAS a bala e encerra (sem dano)
            instance_destroy(self); 
            exit;
        }
    }
    // --- 2. LÓGICA DE ESCUDO (obj_Adenovirus) ---
	if (other.object_index == obj_Adenovirus) {
	    if (other.escudo > 0) {
        
	        other.escudo--; // Reduz a carga do escudo
        
	        // ATENÇÃO: Se a intenção é só absorver, NÃO adicione vida aqui!
	        // A linha 'vida+=global.baseStatus[0]' no seu código original parece ser um erro.
	        // O escudo simplesmente absorve o dano.

	        instance_destroy(self); 
	        exit; // Encerra o código, não prossegue para dano
	    }
	    // Se escudo == 0, o código continua para a aplicação de dano normal (Passo 3).
	}
    // --- 2. APLICA O DANO (Se a bala não foi destruída pelo 'exit' acima) ---
    
    // O alvo é visível (ou não é um Herpesvirus) -> Aplica dano normalmente
    with (other) {
		
        vida -= (global.baseStatus[2]/resistencia); // (Assumindo que o projétil tem a variável 'dano_da_bala')
		
        if (global.podemorrer) {
	
			instance_destroy();
			global.inimigosMOTOS++;
			global.xp += global.xpDROP;
			//show_debug_message("xp :" + string(global.xp))
			global.podemorrer = false
			}
        }
    }
    
    // Destrói a bala após o acerto
    instance_destroy(self);
}
	
