

if (global.upouDeNivel == true && ct == 0) {
 // --- 1. PREPARAÇÃO E GARANTIA DE OPÇÕES ÚNICAS ---
    
    // Destrói quaisquer botões de upgrade que existam na room
    instance_destroy(obj_testBUTOON); 
    
    // Limpa e prepara o array para as 3 novas opções
    global.opcoes_de_upgrade = []; 
    
    // Loop para escolher os 3 upgrades ÚNICOS
    for (var i = 0; i < 3; i++) {
        var upgrade_escolhido = noone;
        var is_duplicate = true;

        // Loop de verificação: repete enquanto o upgrade escolhido for um duplicado
        while (is_duplicate) {
            
            // Escolhe um upgrade aleatório
            upgrade_escolhido = choose(UPGRADES.A, UPGRADES.B, UPGRADES.C, UPGRADES.D, UPGRADES.E,UPGRADES.F);
            
            // Assume que a escolha é única, até que se prove o contrário
            is_duplicate = false; 
            
            // Checa contra os upgrades já selecionados no array (índices 0 até i-1)
            for (var j = 0; j < i; j++) {
                if (global.opcoes_de_upgrade[j] == upgrade_escolhido) {
                    is_duplicate = true; // É um duplicado!
                    break;             // Para o loop interno e volta para escolher outro upgrade
                }
            }
        }
        
        // O upgrade encontrado é único, então o adicionamos ao array
        global.opcoes_de_upgrade[i] = upgrade_escolhido;
        show_debug_message("Opção Única " + string(i) + ": " + string(upgrade_escolhido));
    }
    
    // --- 2. CRIAÇÃO DOS BOTÕES ---
    
    var pos_y = 75; // Posição Y inicial do primeiro botão
    for (var i = 0; i < 3; i++) {
        
        // Cria o botão na posição e Layer de UI (conforme ajustamos)
        var botao_instancia = instance_create_layer(320, pos_y, "lyr_UI_Upgrade", obj_testBUTOON);
        
        // PASSA O UPGRADE ÚNICO PARA O BOTÃO
        botao_instancia.upgrade_associado = global.opcoes_de_upgrade[i];
        
        pos_y += 100;
    }
    
    // --- 3. FINALIZAÇÃO ---
    
    // Desliga a flag para não criar botões no próximo Step
   ct = 1;
}