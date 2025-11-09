//se tiver no upgrade, ele para
if(global.upouDeNivel == false)
{
//ele vai pra frente
x-=velh;
if(vida <= 0)
	{
	sprite_index = spr_inimigo1_morto
	velh=0
	if(image_index >= image_number-3)
		{
			global.podemorrer = true;
		}
	}
// Evento Step do obj_InimigoPAI

// --- 1. Retorno Suave da Escala (Zoom-out) ---

var _velocidade_escala = 0.2; 

// A escala atual se move em direção à escala base (o tamanho padrão).
image_xscale = lerp(image_xscale, escala_base_x, _velocidade_escala);
image_yscale = lerp(image_yscale, escala_base_y, _velocidade_escala);
image_blend = c_white


}