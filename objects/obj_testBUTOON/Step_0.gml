adicao_UPDA = global.adicao_UPDA;
adicao_UPDB = global.adicao_UPDB;
adicao_UPDC = global.adicao_UPDC;
adicao_UPDD1 = global.adicao_UPDD1;
adicao_UPDD2 = global.adicao_UPDD2;

// --- 1. DETECÇÃO DE ESTADO DO MOUSE (MÉTODO ROBUSTO) ---
// Verifica se a área do mouse (coordenadas da Room) está colidindo com a instância do botão.
var _mouse_over_button = position_meeting(mouse_x, mouse_y, id);

// ATENÇÃO: Se o seu menu estiver na GUI Layer, use a linha abaixo no lugar da anterior:
// var _mouse_over_button = position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id);

mouse_sobre = _mouse_over_button;
mouse_pressionado = _mouse_over_button && mouse_check_button(mb_left);


// --- 2. CÁLCULO DA ESCALA E COR DESEJADA ---
var _target_scale_x = scale_base_x;
var _target_scale_y = scale_base_y;

if (mouse_pressionado) 
{
    // Efeito de 'PANCADA' (Diminuir)
    _target_scale_x = scale_base_x * 0.90; // 90% do tamanho
    _target_scale_y = scale_base_y * 0.90;
    
    // Feedback de cor
    image_blend = c_gray; 
    
} 
else if (mouse_sobre) 
{
    // Efeito de 'HOVER' (Aumentar Ligeiramente)
    _target_scale_x = scale_base_x * 1.05; // 105% do tamanho
    _target_scale_y = scale_base_y * 1.05;
    
    // Feedback de cor
	image_blend = c_gray
    
} 
else 
{
    // Estado normal (retornar ao tamanho base)
    _target_scale_x = scale_base_x;
    _target_scale_y = scale_base_y;
    
    image_blend = cor_base; // Retorna à cor original
}


// --- 3. ANIMAÇÃO SUAVE (LERP) ---
// Faz a escala atual se mover em direção à escala desejada de forma suave.
var _velocidade_lerp = 0.2; // Controla a velocidade da "mola"

image_xscale = lerp(image_xscale, _target_scale_x, _velocidade_lerp);
image_yscale = lerp(image_yscale, _target_scale_y, _velocidade_lerp);