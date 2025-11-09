// Evento Draw do obj_testBUTOON
draw_self()
// Desenha o sprite do próprio botão

// --- VERIFICAÇÃO ESSENCIAL: Só desenha se tiver um upgrade válido ---
if (upgrade_associado != noone) {
    
    // 1. Configuração do Desenho
    
    // Use a fonte que você criou (Substitua fnt_seu_jogo pelo nome real)
    if (font_exists(fnt_UPGRADES)) { 
        draw_set_font(fnt_UPGRADES);
    }
    
    draw_set_halign(fa_center); // Alinhamento centralizado
    draw_set_color(c_white);   // Cor do texto
    
    // 2. Criação do Texto Descritivo
    
    var texto_upgrade = "";

    switch (upgrade_associado) {
        case UPGRADES.A:
            texto_upgrade = "Envoltório nuclear:\n+20% de vida";
            break;
        case UPGRADES.B:
            texto_upgrade = "Poros nucleares:\n+1 soldado";
            break;
        case UPGRADES.C:
            texto_upgrade = "Nucléolo:\n+10% de xp";
            break;
        case UPGRADES.D:
            texto_upgrade = "Nucleoplasma:\n+10% na eficiencia de todos os upgrades\na partir de agora";
            break;
        case UPGRADES.E:
            texto_upgrade = "Matriz nuclear:\n+5% de vel de atq\n e -5% de cooldown";
            break;
		case UPGRADES.F:
            texto_upgrade = "Cromatina:\n+45% de dano";
            break;
        default:
            texto_upgrade = "Erro: Upgrade Indefinido";
            break;
    }

    // 3. Desenho
    
    // Desenha o texto exatamente no centro do botão (x, y)
    draw_text(x, y-37, texto_upgrade);


}