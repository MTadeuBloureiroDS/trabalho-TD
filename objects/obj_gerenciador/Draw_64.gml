// Evento: Draw GUI do obj_gerenciador

// --- Lógica do Contador de Waves ---
// NÃO coloque nenhuma condição if(global.upouDeNivel) aqui.

// 1. Configurações
draw_set_font(fnt_WAVE_COUNT)

// Centraliza a posição X para ficar mais bonito, assumindo 1280 de largura de Viewport (GUI)
draw_set_halign(fa_center); 

// 2. Desenho
// X = 640 (Metade de 1280), Y = 25
draw_text(640, 25, "WAVE: " + string(global.ondas))

// 3. Limpeza
draw_set_halign(-1); // Volta ao padrão
draw_set_font(-1)

/// @description Desenha a Barra de Vida da Base (Centralizada na GUI)

// --- 1. DEFINIÇÃO DE COORDENADAS GUI ---

// Obtém as dimensões da GUI (a área que cobre toda a tela).
// Isso garante que o posicionamento seja o mesmo em qualquer resolução de monitor.
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();

// --- 2. CONFIGURAÇÃO DA BARRA ---

// Dimensões da barra (em pixels na tela)
var _bar_width = 400; 
var _bar_height = 40;

// Posição centralizada na parte inferior
var _x1 = (_gui_width / 2) - (_bar_width / 2);
var _y1 = _gui_height - _bar_height - 30; // 30 pixels acima da borda inferior

var _x2 = _x1 + _bar_width;
var _y2 = _y1 + _bar_height;

// --- 3. CÁLCULO DA PORCENTAGEM DE VIDA ---

// Verifica se o objeto da base existe
if (instance_exists(obj_base)) 
{
    var _vida_atual = obj_base.vida;
    var _vida_maxima = obj_base.vida_maxima;
    
    // Calcula a porcentagem de vida (0.0 a 1.0)
    var _percent = _vida_atual / _vida_maxima;

    // --- 4. DESENHO DA BARRA VAZIA (Fundo Preto) ---
    
    // Cor de fundo
    draw_set_colour(c_black);
    draw_rectangle(_x1, _y1, _x2, _y2, false); // false = preenchido

    // --- 5. DESENHO DA BARRA DE VIDA (Progresso) ---
    
    // Calcula o comprimento atual da vida
    var _vida_x2 = _x1 + (_bar_width * _percent);
    
    // Define a cor de acordo com a porcentagem (Juice Effect de Cor!)
    var _cor_vida = c_green;
    if (_percent <= 0.5) _cor_vida = c_yellow; // Amarelo em 50%
    if (_percent <= 0.2) _cor_vida = c_red;    // Vermelho em 20%

    draw_set_colour(_cor_vida);
    draw_rectangle(_x1, _y1, _vida_x2, _y2, false);

    // --- 6. DESENHO DA BORDA (Para o efeito visual) ---
    
    draw_set_colour(c_white);
    draw_rectangle(_x1, _y1, _x2, _y2, true); // true = apenas borda

    // --- 7. DESENHO DO TEXTO (Opcional: Valor da Vida) ---
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_colour(c_white);
    draw_text((_x1 + _x2) / 2, (_y1 + _y2) / 2, string(_vida_atual) + " / " + string(_vida_maxima));

    draw_set_halign(fa_left); // Reseta para o padrão
    draw_set_valign(fa_top); // Reseta para o padrão
}